.class public interface abstract Lcom/android/server/content/MiSyncPause;
.super Ljava/lang/Object;
.source "MiSyncPause.java"


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getPauseEndTime()J
.end method

.method public abstract getResumeTimeLeft()J
.end method

.method public abstract getUid()I
.end method

.method public abstract setPauseToTime(J)Z
.end method

.method public abstract writeToXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
