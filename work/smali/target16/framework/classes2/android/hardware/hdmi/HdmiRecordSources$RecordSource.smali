.class public abstract Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.super Ljava/lang/Object;
.source "HdmiRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordSource"
.end annotation


# instance fields
.field final greylist-max-o mExtraDataSize:I

.field final greylist-max-o mSourceType:I


# direct methods
.method constructor greylist-max-o <init>(II)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    .line 67
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    .line 68
    return-void
.end method


# virtual methods
.method abstract greylist-max-o extraParamToByteArray([BI)I
.end method

.method final greylist-max-o getDataSize(Z)I
    .registers 2

    .line 73
    if-eqz p1, :cond_7

    iget p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_7
    iget p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mExtraDataSize:I

    :goto_9
    return p1
.end method

.method final greylist-max-o toByteArray(Z[BI)I
    .registers 6

    .line 77
    if-eqz p1, :cond_a

    .line 86
    add-int/lit8 v0, p3, 0x1

    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    move p3, v0

    .line 88
    :cond_a
    invoke-virtual {p0, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->extraParamToByteArray([BI)I

    .line 89
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result p1

    return p1
.end method
