module Transaction
    class TransactionService
        def initialize(transaction)
            @transaction = transaction
        end

        def transact
            transaction_context = Transaction::Factory.create_context(@transaction)    
            transaction_context.transact
        end

    end
end