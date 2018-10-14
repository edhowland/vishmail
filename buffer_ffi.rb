# buffer_ffi.rb - module BufferFFI - FFI interface to Viper Buffer class from
# Vish language


module BufferFFI
  def self.mkbuf(string='')
    Buffer.new(string)
  end
  ## fwd(buf) - 
  def self.buf_fwd(buf)
    buf.fwd()
  end
  ## back(buf) - 
  def self.buf_back(buf)
    buf.back()
  end
  ## position(buf) - 
  def self.buf_position(buf)
    buf.position()
  end
  ## beg(buf) - 
  def self.buf_beg(buf)
    buf.beg()
  end
  ## fin(buf) - 
  def self.buf_fin(buf)
    buf.fin()
  end
  ## rchomp(buf) - 
  def self.buf_rchomp(buf)
    buf.rchomp()
  end
  ## lline(buf) - 
  def self.buf_lline(buf)
    buf.lline()
  end
  ## rline(buf) - 
  def self.buf_rline(buf)
    buf.rline()
  end
  ## col(buf) - 
  def self.buf_col(buf)
    buf.col()
  end
  ## indent_level(buf) - 
  def self.buf_indent_level(buf)
    buf.indent_level()
  end
  ## front_of_line(buf) - 
  def self.buf_front_of_line(buf)
    buf.front_of_line()
  end
  ## line_end(buf) - 
  def self.buf_line_end(buf)
    buf.line_end()
  end
  ## back_of_line(buf) - 
  def self.buf_back_of_line(buf)
    buf.back_of_line()
  end
  ## line_start(buf) - 
  def self.buf_line_start(buf)
    buf.line_start()
  end
  ## look_ahead(buf) - 
  def self.buf_look_ahead(buf)
    buf.look_ahead()
  end
  ## srch_fwd(buf) - 
  def self.buf_srch_fwd(buf)
    buf.srch_fwd()
  end
  ## clear(buf) - 
  def self.buf_clear(buf)
    buf.clear()
  end
  ## srch_back(buf) - 
  def self.buf_srch_back(buf)
    buf.srch_back()
  end
  ## goto(buf) - 
  def self.buf_goto(buf)
    buf.goto()
  end
  ## write(buf) - 
  def self.buf_write(buf)
    buf.write()
  end
  ## name(buf) - 
  def self.buf_name(buf)
    buf.name()
  end
  ## goto_position(buf) - 
  def self.buf_goto_position(buf)
    buf.goto_position()
  end
  ## save(buf) - 
  def self.buf_save(buf)
    buf.save()
  end
  ## at(buf) - 
  def self.buf_at(buf)
    buf.at()
  end
  ## del_at(buf) - 
  def self.buf_del_at(buf)
    buf.del_at()
  end
  ## remember(buf) - 
  def self.buf_remember(buf)
    buf.remember()
  end
  ## overwrite!(buf) - 
  def self.buf_overwrite!(buf)
    buf.overwrite!()
  end
  ## savable?(buf) - 
  def self.buf_savable?(buf)
    buf.savable?()
  end
  ## should_save?(buf) - 
  def self.buf_should_save?(buf)
    buf.should_save?()
  end
  ## word_back(buf) - 
  def self.buf_word_back(buf)
    buf.word_back()
  end
  ## match(buf) - 
  def self.buf_match(buf)
    buf.match()
  end
  ## eob?(buf) - 
  def self.buf_eob?(buf)
    buf.eob?()
  end
  ## word_fwd(buf) - 
  def self.buf_word_fwd(buf)
    buf.word_fwd()
  end
  ## within(buf) - 
  def self.buf_within(buf)
    buf.within()
  end
  ## association(buf) - 
  def self.buf_association(buf)
    buf.association()
  end
  ## within_s(buf) - 
  def self.buf_within_s(buf)
    buf.within_s()
  end
  ## apply_at(buf) - 
  def self.buf_apply_at(buf)
    buf.apply_at()
  end
  ## lines(buf) - 
  def self.buf_lines(buf)
    buf.lines()
  end
  ## a_buff=(buf) - 
  def self.buf_a_buff=(buf)
    buf.a_buff=()
  end
  ## b_buff=(buf) - 
  def self.buf_b_buff=(buf)
    buf.b_buff=()
  end
  ## del_line(buf) - 
  def self.buf_del_line(buf)
    buf.del_line()
  end
  ## index(buf) - 
  def self.buf_index(buf)
    buf.index()
  end
  ## name=(buf) - 
  def self.buf_name=(buf)
    buf.name=()
  end
  ## trait_set(buf) - 
  def self.buf_trait_set(buf)
    buf.trait_set()
  end
  ## trait_del(buf) - 
  def self.buf_trait_del(buf)
    buf.trait_del()
  end
  ## empty?(buf) - 
  def self.buf_empty?(buf)
    buf.empty?()
  end
  ## trait_first(buf) - 
  def self.buf_trait_first(buf)
    buf.trait_first()
  end
  ## trait_has(buf) - 
  def self.buf_trait_has(buf)
    buf.trait_has()
  end
  ## length(buf) - 
  def self.buf_length(buf)
    buf.length()
  end
  ## size(buf) - 
  def self.buf_size(buf)
    buf.size()
  end
  ## trait_prev(buf) - 
  def self.buf_trait_prev(buf)
    buf.trait_prev()
  end
  ## trait_exists(buf) - 
  def self.buf_trait_exists(buf)
    buf.trait_exists()
  end
  ## trait_next(buf) - 
  def self.buf_trait_next(buf)
    buf.trait_next()
  end
  ## clean(buf) - 
  def self.buf_clean(buf)
    buf.clean()
  end
  ## trait_list(buf) - 
  def self.buf_trait_list(buf)
    buf.trait_list()
  end
  ## down(buf) - 
  def self.buf_down(buf)
    buf.down()
  end
  ## read(buf) - 
  def self.buf_read(buf)
    buf.read()
  end
  ## to_a(buf) - 
  def self.buf_to_a(buf)
    buf.to_a()
  end
  ## up(buf) - 
  def self.buf_up(buf)
    buf.up()
  end
  ## restore(buf) - 
  def self.buf_restore(buf)
    buf.restore()
  end
  ## slice(buf) - 
  def self.buf_slice(buf)
    buf.slice()
  end
  ## slice!(buf) - 
  def self.buf_slice!(buf)
    buf.slice!()
  end
  ## line(buf) - 
  def self.buf_line(buf)
    buf.line()
  end
  ## line_number(buf) - 
  def self.buf_line_number(buf)
    buf.line_number()
  end
  ## restore_extend(buf) - 
  def self.buf_restore_extend(buf)
    buf.restore_extend()
  end
  ## buffer_exceeded(buf) - 
  def self.buf_buffer_exceeded(buf)
    buf.buffer_exceeded()
  end
  ## match_data(buf) - 
  def self.buf_match_data(buf)
    buf.match_data()
  end
  ## a_buff(buf) - 
  def self.buf_a_buff(buf)
    buf.a_buff()
  end
  ## b_buff(buf) - 
  def self.buf_b_buff(buf)
    buf.b_buff()
  end
  ## suppress(buf) - 
  def self.buf_suppress(buf)
    buf.suppress()
  end
  ## dirty?(buf) - 
  def self.buf_dirty?(buf)
    buf.dirty?()
  end
  ## ins(buf) - 
  def self.buf_ins(buf, string)
    buf.ins(string)
  end
  ## ins_at(buf) - 
  def self.buf_ins_at(buf)
    buf.ins_at()
  end
  ## del(buf) - 
  def self.buf_del(buf)
    buf.del()
  end
  ## buf_to_s returns Buffer as string
  def self.buf_to_s(buf)
    buf.to_s
  end
end
