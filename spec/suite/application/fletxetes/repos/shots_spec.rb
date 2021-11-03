# frozen_string_literal: true

RSpec.describe Fletxetes::Repos::Shots, :db do
  subject(:repo) { described_class.new }

  describe "#create" do
    it "accepts the position as a hash" do
      batch = repo.batches.command(:create).call({})

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
end
