module Transaction
    class DepositTransactionStrategy

        def initialize(transaction:)
            @transaction = transaction
        end

        def transact
            source_account = @transaction.source_account
            value_transaction = @transaction.value_cents
            # TODO valid if positive
            source_account.balance += value_transaction
        end

    end
end