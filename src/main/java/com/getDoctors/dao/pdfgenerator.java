package com.getDoctors.dao;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import com.getDoctors.model.appointment;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class pdfgenerator {

	public void generateAppointmentPdf(String filePath, List<appointment> appointments) {
		Document document = new Document(PageSize.A4.rotate());
		try {
			PdfWriter.getInstance(document, new FileOutputStream(filePath));
			document.open();

			PdfPTable table = new PdfPTable(6); // Number of columns
			addAppointmentTableHeader(table);
			addAppointmentRows(table, appointments);

			document.add(table);
			document.close();
		} catch (DocumentException | IOException e) {
			e.printStackTrace();
		}
	}

	private void addAppointmentTableHeader(PdfPTable table) {
		PdfPCell cell = new PdfPCell();
		cell.setPhrase(new Paragraph("Appointment ID"));
		table.addCell(cell);

		cell.setPhrase(new Paragraph("Patient Name"));
		table.addCell(cell);

		cell.setPhrase(new Paragraph("Patient Email"));
		table.addCell(cell);

		cell.setPhrase(new Paragraph("Appointment Date"));
		table.addCell(cell);

		cell.setPhrase(new Paragraph("Appointment Time"));
		table.addCell(cell);

		cell.setPhrase(new Paragraph("Additional Note"));
		table.addCell(cell);
	}

	private void addAppointmentRows(PdfPTable table, List<appointment> appointments) {
		for (appointment appointment : appointments) {
			table.addCell(Integer.toString(appointment.getAppointment_id()));
			table.addCell(appointment.getPatient_name());
			table.addCell(appointment.getPatient_email());
			table.addCell(appointment.getAppointment_date());
			table.addCell(appointment.getAppointment_time());
			table.addCell(appointment.getAdditional_note());
		}
	}

}
