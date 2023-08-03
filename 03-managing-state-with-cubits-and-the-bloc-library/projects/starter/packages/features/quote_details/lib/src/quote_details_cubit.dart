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
    try {
      final quote = await quoteRepository.getQuoteDetails(quoteId);

      emit(QuoteDetailsSuccess(quote: quote));
    } catch (error) {
      emit(
        const QuoteDetailsFailure(),
      );
    }
  }

  void refetch() async {
    emit(
      const QuoteDetailsInProgess(),
    );

    _fetchQuoteDetails();
  }

  void upvoteQuote() async {
    try {
      final updateQuote = await quoteRepository.upvoteQuote(quoteId);
      emit(QuoteDetailsSuccess(quote: updateQuote));
    } catch (error) {
      final lastState = state;
      if (lastState is QuoteDetailsSuccess) {
        emit(QuoteDetailsSuccess(
          quote: lastState.quote,
          quoteUpdateError: error,
        ));
      }
    }
  }

  void downvoteQuote() async {
    try {
      final updateQuote = await quoteRepository.downvoteQuote(quoteId);
      emit(QuoteDetailsSuccess(quote: updateQuote));
    } catch (error) {
      final lastState = state;
      if (lastState is QuoteDetailsSuccess) {
        emit(
          QuoteDetailsSuccess(
            quote: lastState.quote,
            quoteUpdateError: error,
          ),
        );
      }
    }
  }

  void unvoteQuote() async {
    try {
      final updateQuote = await quoteRepository.unvoteQuote(quoteId);
      emit(QuoteDetailsSuccess(quote: updateQuote));
    } catch (error) {
      final lastState = state;
      if (lastState is QuoteDetailsSuccess) {
        emit(
          QuoteDetailsSuccess(
            quote: lastState.quote,
            quoteUpdateError: error,
          ),
        );
      }
    }
  }

  void favoriteQuote() async {
    try {
      final updateQuote = await quoteRepository.favoriteQuote(quoteId);
      emit(QuoteDetailsSuccess(quote: updateQuote));
    } catch (error) {
      final lastState = state;
      if (lastState is QuoteDetailsSuccess) {
        emit(
          QuoteDetailsSuccess(
            quote: lastState.quote,
            quoteUpdateError: error,
          ),
        );
      }
    }
  }

  void unfavoriteQuote() async {
    try {
      final updateQuote = await quoteRepository.unfavoriteQuote(quoteId);
      emit(QuoteDetailsSuccess(quote: updateQuote));
    } catch (error) {
      final lastState = state;
      if (lastState is QuoteDetailsSuccess) {
        emit(
          QuoteDetailsSuccess(
            quote: lastState.quote,
            quoteUpdateError: error,
          ),
        );
      }
    }
  }
}
