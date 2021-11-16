# frozen_string_literal: true

RSpec.describe Fletxetes::Repos::Shots, :db do
  subject(:repo) { described_class.new }
  let(:batch) { repo.batches.command(:create).call({}) }

  describe "#create" do
    it "accepts the position as a hash" do
      shot_attrs = {
        batch_id: batch.id,
        number: 1,
        punctuation: 6,
        position: { x: 3.14, y: -1.29 }
      }

      created_shot = repo.create(shot_attrs)

      expect(created_shot.id).not_to be_nil
      expect(created_shot.position.x).to eq 3.14
      expect(created_shot.position.y).to eq -1.29
    end

    it "the position can be nil" do
      batch = repo.batches.command(:create).call({})

      shot_attrs = {
        batch_id: batch.id,
        number: 1,
        punctuation: 6
      }

      created_shot = repo.create(shot_attrs)

      expect(created_shot.id).not_to be_nil
      expect(created_shot.position).to be_nil
    end
  end

  describe "#update" do
    it "works" do
      shot_attrs = {
        batch_id: batch.id,
        number: 1,
        punctuation: 6,
        position: { x: 3.14, y: -1.29 }
      }

      shot = repo.create(shot_attrs)

      expect { repo.update(shot.id, punctuation: 8) }
        .to change { repo.shots.by_pk(shot.id).one.punctuation }
        .from(6)
        .to(8)
    end
  end
end
