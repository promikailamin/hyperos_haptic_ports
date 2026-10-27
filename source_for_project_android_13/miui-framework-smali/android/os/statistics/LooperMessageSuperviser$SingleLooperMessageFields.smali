.class public Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
.super Landroid/os/statistics/MicroscopicEvent$RootEventFields;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLooperMessageFields"
.end annotation


# static fields
.field private static final blacklist FIELD_MESSAGE_NAME:Ljava/lang/String; = "messageName"

.field private static final blacklist FIELD_PLAN_UPTIME:Ljava/lang/String; = "planTime"


# instance fields
.field public blacklist messageCallback:Ljava/lang/String;

.field public blacklist messageName:Ljava/lang/String;

.field public blacklist messageTarget:Ljava/lang/String;

.field public blacklist messageWhat:I

.field public blacklist planUptimeMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;-><init>(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 84
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    .line 88
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    .line 90
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 104
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    .line 110
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 114
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 116
    :try_start_3
    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    .line 117
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 121
    const-string v2, "callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 124
    :cond_28
    const-string v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    :goto_32
    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 128
    const-string v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_44
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 134
    .end local v1    # "b":Ljava/lang/StringBuilder;
    :cond_4e
    const-string v1, "messageName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "planTime"

    iget-wide v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_5a} :catch_5c

    .line 138
    nop

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_60

    .line 136
    :catch_5c
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_60
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-wide v0, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    return-void
.end method
