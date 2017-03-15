describe '#matches' do
  context 'when true' do
    it 'returns the matched word' do
      expect(matches('xxyyzz', words)).to eq ["bookkeeper", "bookkeepers", "bookkeeping", "bookkeepings"]
      expect(matches('xxyyx', words)).to eq ["addressees", "betweenness", "betweennesses", "colessees", "fricassees", "greenness", "greennesses", "heelless", "keelless", "keenness", "keennesses", "lessees", "wheelless"]
    end
  end
end
