require 'spec_helper'

describe "CN holidays" do
  %w(
    2014-01-01
    2014-01-31
    2014-02-01
    2014-02-02
    2014-02-03
    2014-02-04
    2014-02-05
    2014-02-06
    2014-04-05
    2014-04-06
    2014-04-07
    2014-05-01
    2014-05-02
    2014-05-03
    2014-05-31
    2014-06-01
    2014-06-02
    2014-09-06
    2014-09-07
    2014-09-08
    2014-10-01
    2014-10-02
    2014-10-03
    2014-10-04
    2014-10-05
    2014-10-06
    2014-10-07
    2015-01-01
    2015-01-02
    2015-01-03
    2015-02-18
    2015-02-19
    2015-02-20
    2015-02-21
    2015-02-22
    2015-02-23
    2015-02-24
    2015-04-05
    2015-04-06
    2015-05-01
    2015-06-22
    2015-09-27
    2015-10-01
    2015-10-02
    2015-10-03
    2015-10-04
    2015-10-05
    2015-10-06
    2015-10-07
    2016-01-01
    2016-01-02
    2016-01-03
    2016-02-07
    2016-02-08
    2016-02-09
    2016-02-10
    2016-02-11
    2016-02-12
    2016-02-13
    2016-04-03
    2016-04-04
    2016-04-30
    2016-05-01
    2016-05-02
    2016-06-09
    2016-06-10
    2016-06-11
    2016-09-15
    2016-09-16
    2016-09-17
    2016-10-01
    2016-10-02
    2016-10-03
    2016-10-04
    2016-10-05
    2016-10-06
    2016-10-07
    2017-01-01
    2017-01-02
    2017-01-03
    2017-02-07
    2017-02-08
    2017-02-09
    2017-02-10
    2017-02-11
    2017-02-12
    2017-02-13
    2017-04-03
    2017-04-04
    2017-04-30
    2017-05-01
    2017-05-02
    2017-06-09
    2017-06-10
    2017-06-11
    2017-09-15
    2017-09-16
    2017-09-17
    2017-10-01
    2017-10-02
    2017-10-03
    2017-10-04
    2017-10-05
    2017-10-06
    2017-10-07
  ).map { |x| Date.parse x }.each do |expected_holiday|
    it "treats #{expected_holiday} as a holiday" do
      expect(BusinessCalendar.for(:CN).is_holiday?(expected_holiday)).to be true
    end
  end
end
