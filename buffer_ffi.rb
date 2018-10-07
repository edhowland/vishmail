# buffer_ffi.rb - module BufferFFI - FFI interface to Viper Buffer class from
# Vish language


module BufferFFI
  def self.mkbuf(string='')
    Buffer.new(string)
  end
  ## fwd(buf) - 
  def self.fwd(buf)
    buf.fwd()
  end
  ## back(buf) - 
  def self.back(buf)
    buf.back()
  end
  ## position(buf) - 
  def self.position(buf)
    buf.position()
  end
  ## beg(buf) - 
  def self.beg(buf)
    buf.beg()
  end
  ## fin(buf) - 
  def self.fin(buf)
    buf.fin()
  end
  ## rchomp(buf) - 
  def self.rchomp(buf)
    buf.rchomp()
  end
  ## lline(buf) - 
  def self.lline(buf)
    buf.lline()
  end
  ## rline(buf) - 
  def self.rline(buf)
    buf.rline()
  end
  ## col(buf) - 
  def self.col(buf)
    buf.col()
  end
  ## indent_level(buf) - 
  def self.indent_level(buf)
    buf.indent_level()
  end
  ## front_of_line(buf) - 
  def self.front_of_line(buf)
    buf.front_of_line()
  end
  ## line_end(buf) - 
  def self.line_end(buf)
    buf.line_end()
  end
  ## back_of_line(buf) - 
  def self.back_of_line(buf)
    buf.back_of_line()
  end
  ## line_start(buf) - 
  def self.line_start(buf)
    buf.line_start()
  end
  ## look_ahead(buf) - 
  def self.look_ahead(buf)
    buf.look_ahead()
  end
  ## srch_fwd(buf) - 
  def self.srch_fwd(buf)
    buf.srch_fwd()
  end
  ## clear(buf) - 
  def self.clear(buf)
    buf.clear()
  end
  ## srch_back(buf) - 
  def self.srch_back(buf)
    buf.srch_back()
  end
  ## goto(buf) - 
  def self.goto(buf)
    buf.goto()
  end
  ## write(buf) - 
  def self.write(buf)
    buf.write()
  end
  ## name(buf) - 
  def self.name(buf)
    buf.name()
  end
  ## goto_position(buf) - 
  def self.goto_position(buf)
    buf.goto_position()
  end
  ## save(buf) - 
  def self.save(buf)
    buf.save()
  end
  ## at(buf) - 
  def self.at(buf)
    buf.at()
  end
  ## del_at(buf) - 
  def self.del_at(buf)
    buf.del_at()
  end
  ## remember(buf) - 
  def self.remember(buf)
    buf.remember()
  end
  ## overwrite!(buf) - 
  def self.overwrite!(buf)
    buf.overwrite!()
  end
  ## savable?(buf) - 
  def self.savable?(buf)
    buf.savable?()
  end
  ## should_save?(buf) - 
  def self.should_save?(buf)
    buf.should_save?()
  end
  ## word_back(buf) - 
  def self.word_back(buf)
    buf.word_back()
  end
  ## match(buf) - 
  def self.match(buf)
    buf.match()
  end
  ## eob?(buf) - 
  def self.eob?(buf)
    buf.eob?()
  end
  ## word_fwd(buf) - 
  def self.word_fwd(buf)
    buf.word_fwd()
  end
  ## within(buf) - 
  def self.within(buf)
    buf.within()
  end
  ## association(buf) - 
  def self.association(buf)
    buf.association()
  end
  ## within_s(buf) - 
  def self.within_s(buf)
    buf.within_s()
  end
  ## apply_at(buf) - 
  def self.apply_at(buf)
    buf.apply_at()
  end
  ## lines(buf) - 
  def self.lines(buf)
    buf.lines()
  end
  ## a_buff=(buf) - 
  def self.a_buff=(buf)
    buf.a_buff=()
  end
  ## b_buff=(buf) - 
  def self.b_buff=(buf)
    buf.b_buff=()
  end
  ## del_line(buf) - 
  def self.del_line(buf)
    buf.del_line()
  end
  ## index(buf) - 
  def self.index(buf)
    buf.index()
  end
  ## name=(buf) - 
  def self.name=(buf)
    buf.name=()
  end
  ## trait_set(buf) - 
  def self.trait_set(buf)
    buf.trait_set()
  end
  ## trait_del(buf) - 
  def self.trait_del(buf)
    buf.trait_del()
  end
  ## empty?(buf) - 
  def self.empty?(buf)
    buf.empty?()
  end
  ## trait_first(buf) - 
  def self.trait_first(buf)
    buf.trait_first()
  end
  ## trait_has(buf) - 
  def self.trait_has(buf)
    buf.trait_has()
  end
  ## length(buf) - 
  def self.length(buf)
    buf.length()
  end
  ## size(buf) - 
  def self.size(buf)
    buf.size()
  end
  ## trait_prev(buf) - 
  def self.trait_prev(buf)
    buf.trait_prev()
  end
  ## trait_exists(buf) - 
  def self.trait_exists(buf)
    buf.trait_exists()
  end
  ## trait_next(buf) - 
  def self.trait_next(buf)
    buf.trait_next()
  end
  ## clean(buf) - 
  def self.clean(buf)
    buf.clean()
  end
  ## trait_list(buf) - 
  def self.trait_list(buf)
    buf.trait_list()
  end
  ## down(buf) - 
  def self.down(buf)
    buf.down()
  end
  ## read(buf) - 
  def self.read(buf)
    buf.read()
  end
  ## to_a(buf) - 
  def self.to_a(buf)
    buf.to_a()
  end
  ## up(buf) - 
  def self.up(buf)
    buf.up()
  end
  ## restore(buf) - 
  def self.restore(buf)
    buf.restore()
  end
  ## slice(buf) - 
  def self.slice(buf)
    buf.slice()
  end
  ## slice!(buf) - 
  def self.slice!(buf)
    buf.slice!()
  end
  ## line(buf) - 
  def self.line(buf)
    buf.line()
  end
  ## line_number(buf) - 
  def self.line_number(buf)
    buf.line_number()
  end
  ## restore_extend(buf) - 
  def self.restore_extend(buf)
    buf.restore_extend()
  end
  ## buffer_exceeded(buf) - 
  def self.buffer_exceeded(buf)
    buf.buffer_exceeded()
  end
  ## match_data(buf) - 
  def self.match_data(buf)
    buf.match_data()
  end
  ## a_buff(buf) - 
  def self.a_buff(buf)
    buf.a_buff()
  end
  ## b_buff(buf) - 
  def self.b_buff(buf)
    buf.b_buff()
  end
  ## suppress(buf) - 
  def self.suppress(buf)
    buf.suppress()
  end
  ## dirty?(buf) - 
  def self.dirty?(buf)
    buf.dirty?()
  end
  ## ins(buf) - 
  def self.ins(buf)
    buf.ins()
  end
  ## ins_at(buf) - 
  def self.ins_at(buf)
    buf.ins_at()
  end
  ## del(buf) - 
  def self.del(buf)
    buf.del()
  end
end
