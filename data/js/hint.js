var words = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.whitespace,
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  // url points to a json file that contains an array of country names, see
  // https://github.com/twitter/typeahead.js/blob/gh-pages/data/words.json
  prefetch: 'C:/Users/karab/Desktop/webvectors/data/turkish_vocab.json'
});


// passing in `null` for the `options` arguments will result in the default
// options being used
$('#queryform .typeahead').typeahead(null, {
  name: 'words',
  source: words
});