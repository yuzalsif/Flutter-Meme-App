import 'package:domain_models/domain_models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_repository/quote_repository.dart';

part 'quote_details_state.dart';

class QuoteDetailsCubit extends Cubit<QuoteDetailsState> {
  QuoteDetailsCubit({
    required this.quoteId,
    required this.quoteRepository,
  }) : super(
          const QuoteDetailsInProgess(),
        ) {
    _fetchQuoteDetails();
  }

  final int quoteId;

  final QuoteRepository quoteRepository;

  void _fetchQuoteDetails() async {
    // TODO: Fetch data from QuoteRepository
  }

  void refetch() async {
    // TODO: Add a body to refetch()
  }

  void upvoteQuote() async {
    // TODO: Add a body to upvoteQuote()
  }

  void downvoteQuote() async {
    // TODO: Add a body to downvote()
  }

  void unvoteQuote() async {
    // TODO: Add a body to unvote()
  }

  void favoriteQuote() async {
    // TODO: Add a body to favorite()
  }

  void unfavoriteQuote() async {
    // TODO: Add a body to unfavorite()
  }
}
