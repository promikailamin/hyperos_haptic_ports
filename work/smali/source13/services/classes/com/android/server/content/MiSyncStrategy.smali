.class public interface abstract Lcom/android/server/content/MiSyncStrategy;
.super Ljava/lang/Object;
.source "MiSyncStrategy.java"


# virtual methods
.method public abstract apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V
.end method

.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getStrategy()I
.end method

.method public abstract getUid()I
.end method

.method public abstract isAllowedToRun(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
.end method

.method public abstract setStrategy(I)Z
.end method

.method public abstract writeToXML(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
