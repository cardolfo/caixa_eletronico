class Transaction < ApplicationRecord
    enum transaction_type: { deposit: 0, withdrawal: 1, transfer: 2}
    belongs_to :account
end
