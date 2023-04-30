from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from data_access.models import Influencer_data


r =  Influencer_data()
print(r.fetch())