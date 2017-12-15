require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :breed => 'test_breed',
      :age => 'test_age', :species => 'test_species', :gender 'test_gender',
      :about => 'test_about'
     }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq('test_age')
  end

  it 'returns the animal species' do
    expect(JSON.parse(response.body)['species']).to eq('test_species')
  end

  it 'returns the animal gender' do
    expect(JSON.parse(response.body)['gender']).to eq('test_gender')
  end

  it 'returns the animal about' do
    expect(JSON.parse(response.body)['about']).to eq('test_about')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
