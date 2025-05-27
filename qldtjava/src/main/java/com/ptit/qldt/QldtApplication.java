package com.ptit.qldt;

import com.ptit.qldt.dtos.AccountDto;
import com.ptit.qldt.dtos.GroupDto;
import com.ptit.qldt.dtos.GroupRegistrationDto;
import com.ptit.qldt.services.GroupRegistrationService;
import com.ptit.qldt.services.GroupService;
import com.ptit.qldt.services.UserService;
import net.bytebuddy.asm.Advice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


import java.time.LocalDateTime;
import java.util.List;

@SpringBootApplication
@EnableScheduling
public class QldtApplication {

	public static void main(String[] args) {
		SpringApplication.run(QldtApplication.class, args);
	}

	@Autowired
	private GroupRegistrationService groupRegistrationService;
	@Autowired
	private GroupService groupService;

	@Scheduled(cron = "0 15 6,8,11,13,15 * * *")
	public void timeTable(){
		String dayOfWeek = LocalDateTime.now().getDayOfWeek().toString();
		String timeNow = LocalDateTime.now().getHour()+":"+LocalDateTime.now().getMinute();
		System.out.println(timeNow);
		System.out.println(convertDayOfWeek(dayOfWeek)+" "+convertTime(timeNow));

		List<AccountDto> allStudentAccount = groupService.findAllStudentAccount();
		List<GroupRegistrationDto> allGroupInDayOfWeek = groupRegistrationService.findGroupByDayOfWeekAndTime(convertDayOfWeek(dayOfWeek),convertTime(timeNow));

		for(GroupRegistrationDto x : allGroupInDayOfWeek){
			String userIdTelegaram = x.getAccount().getUser_id_telegram();
			String beginTime = (LocalDateTime.now().getHour()+1)+":00";
			String endTime = (LocalDateTime.now().getHour()+3)+":00";
			String message = String.format("Bạn có lịch học của học phần %s , lớp %s , tại phòng %s , từ lúc %s đến %s ",
					x.getGroup().getCourse().getName(),x.getGroup().getGroupId(),x.getGroup().getRoom(),beginTime,endTime);
			System.out.println(userIdTelegaram);
			System.out.println(x.getGroup().getGroupId());
		}
	}

	public String convertDayOfWeek(String dayOfWeek){
		switch(dayOfWeek){
			case "MONDAY": return "Thứ 2";
			case "TUESDAY": return "Thứ 3";
			case "WEDNESDAY": return "Thứ 4";
			case "THURSDAY": return "Thứ 5";
			case "FRIDAY": return "Thứ 6";
			case "SATURDAY": return "Thứ 7";
			default: return null;
		}
	}

	public String convertTime(String time){
		switch(time){
			case "6:30": return "Kíp 1";
			case "8:30": return "Kíp 2";
			case "11:30": return "Kíp 3";
			case "11:15": return "Kíp 4";
			case "15:30": return "Kíp 5";
			default: return null;
		}
	}
}
