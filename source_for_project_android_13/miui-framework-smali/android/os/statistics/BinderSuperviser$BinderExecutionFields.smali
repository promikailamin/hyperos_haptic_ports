.class public Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;
.super Landroid/os/statistics/MicroscopicEvent$RootEventFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderExecutionFields"
.end annotation


# static fields
.field private static final blacklist FIELD_CALLING_PID:Ljava/lang/String; = "callingPid"

.field private static final blacklist FIELD_CODE:Ljava/lang/String; = "code"

.field private static final blacklist FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"


# instance fields
.field public blacklist callingPid:I

.field public blacklist code:I

.field public blacklist interfaceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;-><init>(Z)V

    .line 244
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 248
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 249
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "binder":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    .line 251
    if-eqz v0, :cond_15

    .line 252
    invoke-static {v0}, Landroid/os/statistics/BinderSuperviser;->-$$Nest$smgetInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    .line 254
    :cond_15
    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 255
    const-string v1, ""

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    .line 257
    :cond_1d
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    .line 258
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    .line 259
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 271
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    .line 273
    if-nez v0, :cond_f

    .line 274
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    .line 276
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    .line 278
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 282
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 284
    :try_start_3
    const-string v0, "interface"

    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v0, "code"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 286
    const-string v0, "callingPid"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_18} :catch_19

    .line 289
    goto :goto_1d

    .line 287
    :catch_19
    move-exception v0

    .line 288
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 290
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1d
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 263
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    return-void
.end method
