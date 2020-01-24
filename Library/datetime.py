import   time

class   Datetime:
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    def   Get_Current_Time(self):
        localtime = time.localtime()
        forrmatted_time  =  time.strftime("%M%D%S",localtime)     
        return      forrmatted_time