# compose.rb - FFI interface to Viper Buffer class from Vish

require_relative '../viper/lib/api'
require_relative 'buffer_ffi'

Dispatch << BufferFFI

