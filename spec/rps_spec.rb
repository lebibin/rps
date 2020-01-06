# frozen_string_literal: true

require_relative '../lib/rps'
# require './lib/rps'

RSpec.describe RPS do
  describe '#play' do
    let(:rps) { RPS.new }
    context 'first argument is rock' do
      it 'draws against rock' do
        expect(rps.play(:rock, :rock)).to eq('draw')
      end
      it 'beats scissors' do
        expect(rps.play(:rock, :scissors)).to eq('p1 wins')
      end
      it 'is beaten by paper' do
        expect(rps.play(:rock, :paper)).to eq('p2 wins')
      end
    end
    context 'first argument is paper' do
      it 'draws against paper' do
        expect(rps.play(:paper, :paper)).to eq('draw')
      end
      it 'beats rock' do
        expect(rps.play(:paper, :rock)).to eq('p1 wins')
      end
      it 'is beaten by scissors' do
        expect(rps.play(:paper, :scissors)).to eq('p2 wins')
      end
    end
    context 'first argument is scissors' do
      it 'draws against scissors' do
        expect(rps.play(:scissors, :scissors)).to eq('draw')
      end
      it 'beats paper' do
        expect(rps.play(:scissors, :paper)).to eq('p1 wins')
      end
      it 'is beaten by rock' do
        expect(rps.play(:scissors, :rock)).to eq('p2 wins')
      end
    end
  end
end
