.class public Landroid/os/statistics/EventLogSuperviser$EventLogFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventLogFields"
.end annotation


# static fields
.field private static final blacklist FIELD_EVENT_LOG_TAG_ID:Ljava/lang/String; = "eventLogTagId"

.field private static final blacklist FIELD_EVENT_LOG_TAG_NAME:Ljava/lang/String; = "eventLogTagName"

.field private static final blacklist FIELD_EVENT_LOG_TIME:Ljava/lang/String; = "eventLogTime"

.field private static final blacklist FIELD_EVENT_LOG_VALUE_STRS:Ljava/lang/String; = "eventlogValues"


# instance fields
.field public blacklist currentTimeMillis:J

.field public blacklist eventLogTagId:I

.field public blacklist eventLogTagName:Ljava/lang/String;

.field public blacklist eventLogValueObject:Ljava/lang/Object;

.field public blacklist eventLogValueStrs:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>(Z)V

    .line 138
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 182
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    .line 186
    if-nez v0, :cond_1b

    .line 187
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    .line 189
    :cond_1b
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    .line 190
    if-nez v0, :cond_29

    .line 191
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->-$$Nest$sfgetemptyEventValueStrs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    .line 194
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public blacklist resolveLazyInfo()V
    .registers 5

    .line 147
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    if-eqz v0, :cond_31

    .line 148
    invoke-static {v0}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    .line 153
    :cond_31
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    if-eqz v0, :cond_5f

    .line 154
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_52

    .line 155
    check-cast v0, [Ljava/lang/Object;

    .line 156
    .local v0, "objects":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    array-length v2, v0

    if-ge v1, v2, :cond_51

    .line 158
    iget-object v2, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 160
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "i":I
    :cond_51
    goto :goto_65

    .line 161
    :cond_52
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    .line 162
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_65

    .line 165
    :cond_5f
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->-$$Nest$sfgetemptyEventValueStrs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    .line 168
    :goto_65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 199
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 201
    :try_start_3
    const-string v0, "eventLogTime"

    iget-wide v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 202
    const-string v0, "eventLogTagId"

    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    const-string v0, "eventLogTagName"

    iget-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 205
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 206
    .local v0, "arr":Lorg/json/JSONArray;
    const-string v1, "eventlogValues"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_28} :catch_29

    .line 210
    .end local v0    # "arr":Lorg/json/JSONArray;
    :cond_28
    goto :goto_2d

    .line 208
    :catch_29
    move-exception v0

    .line 209
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 211
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2d
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueStrs:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 178
    return-void
.end method
