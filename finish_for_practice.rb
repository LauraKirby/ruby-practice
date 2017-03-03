# finish figuring this out -- should not delete array if there is a valid string.
# if you get stuck, see how search models eliminate empty values within the initialize methods

  def filter_params(raw_site_params)
    raw_site_params || {} if raw_site_params.present?
    # 'reject' will return true if changes were made
    filtered_params = raw_site_params.reject{ |k,v| v.blank? || ( v.class == Array && v.reject!{|x| x.nil? || x == '' || x.length == 0} ) }
    return filtered_params

    # previous version below
    # raw_site_params.reject{ |k,v| v.blank? || ( v.class == Array && v.reject(&:blank?).blank?) }
  end


test_params_2 = { "msc_profile_search" => { "location" => "",
                                             "roles" => "#{@role.id}",
                                             "diagnosis" =>  "#{@diagnosis.id}",
                                             "symptoms" => ["", "", ""],
                                             "treatments" => ["#{@treatment.id}", "", "", ""],
                                             "effectiveness"=>"",
                                             "ages" => "",
                                             "gender" => "F",
                                             "query" => ""
                                           }
                  }

puts "#{filter_params(test_params_2)}"