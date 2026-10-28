package com.smartwaste.dto;

public class BinDataRequest {
    private String binId;
    private Double fillPercentage;
    private Double distanceCm;
    private String status;
    
    public BinDataRequest() {}

    public String getBinId() { return binId; }
    public void setBinId(String binId) { this.binId = binId; }

    public Double getFillPercentage() { return fillPercentage; }
    public void setFillPercentage(Double fillPercentage) { this.fillPercentage = fillPercentage; }

    public Double getDistanceCm() { return distanceCm; }
    public void setDistanceCm(Double distanceCm) { this.distanceCm = distanceCm; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
