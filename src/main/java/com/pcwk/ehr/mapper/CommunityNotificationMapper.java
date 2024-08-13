package com.pcwk.ehr.mapper;
import java.util.List;

import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.notification.domain.CommunityNotification;
public interface CommunityNotificationMapper extends WorkDiv<CommunityNotification> {
	
	public int checkNotified(CommunityNotification noti);
	
	public List<CommunityNotification> doRetrieveNoti(Search search);


}
