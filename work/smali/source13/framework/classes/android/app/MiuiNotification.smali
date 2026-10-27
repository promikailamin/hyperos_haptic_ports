.class public Landroid/app/MiuiNotification;
.super Ljava/lang/Object;
.source "MiuiNotification.java"


# static fields
.field public static final blacklist EXTRA_ENABLE_FLOAT:Ljava/lang/String; = "miui.enableFloat"

.field public static final blacklist EXTRA_ENABLE_KEYGUARD:Ljava/lang/String; = "miui.enableKeyguard"

.field public static final blacklist EXTRA_FLOAT_TIME:Ljava/lang/String; = "miui.floatTime"

.field public static final blacklist EXTRA_MESSAGE_CLASSNAME:Ljava/lang/String; = "miui.messageClassName"

.field public static final blacklist EXTRA_MESSAGE_COUNT:Ljava/lang/String; = "miui.messageCount"

.field public static final blacklist EXTRA_SHOW_ACTION:Ljava/lang/String; = "miui.showAction"

.field public static final blacklist EXTRA_TARGET_PKG:Ljava/lang/String; = "miui.targetPkg"

.field public static final blacklist TYPE_ADVERTISEMENT:I = 0x1


# instance fields
.field public blacklist customizedIcon:Z

.field private blacklist enableFloat:Z

.field private blacklist enableKeyguard:Z

.field private blacklist exitFloatingIntent:Landroid/app/PendingIntent;

.field private blacklist floatTime:I

.field private blacklist messageClassName:Ljava/lang/CharSequence;

.field private blacklist messageCount:I

.field private blacklist targetPkg:Ljava/lang/CharSequence;

.field public blacklist traceContent:Ljava/lang/CharSequence;

.field public blacklist traceType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 86
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 91
    const/16 v1, 0x1388

    iput v1, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 100
    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 108
    return-void
.end method

.method public static blacklist getLedPwmOffOn(I)[I
    .registers 4
    .param p0, "totalLength"    # I

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 309
    .local v0, "values":[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 310
    aget v1, v0, v2

    sub-int v1, p0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 311
    return-object v0
.end method


# virtual methods
.method public blacklist getExitFloatingIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getFloatTime()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    iget v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    return v0
.end method

.method public blacklist getMessageClassName()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getMessageCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    return v0
.end method

.method public blacklist getTargetPkg()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isEnableFloat()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    return v0
.end method

.method public blacklist isEnableKeyguard()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 253
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 255
    :cond_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3b

    move v1, v2

    :cond_3b
    iput-boolean v1, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    .line 259
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 261
    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 262
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 264
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_73

    .line 266
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 268
    :cond_73
    return-void
.end method

.method public blacklist setCustomizedIcon(Z)Landroid/app/MiuiNotification;
    .registers 2
    .param p1, "customizedIcon"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 236
    return-object p0
.end method

.method public blacklist setEnableFloat(Z)Landroid/app/MiuiNotification;
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 165
    return-object p0
.end method

.method public blacklist setEnableKeyguard(Z)Landroid/app/MiuiNotification;
    .registers 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iput-boolean p1, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 175
    return-object p0
.end method

.method public blacklist setExitFloatingIntent(Landroid/app/PendingIntent;)Landroid/app/MiuiNotification;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iput-object p1, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 156
    return-object p0
.end method

.method public blacklist setFloatTime(I)Landroid/app/MiuiNotification;
    .registers 2
    .param p1, "floatTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    if-lez p1, :cond_4

    .line 217
    iput p1, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 219
    :cond_4
    return-object p0
.end method

.method public blacklist setMessageClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "messageClassName"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    iput-object p1, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 124
    return-void
.end method

.method public blacklist setMessageCount(I)V
    .registers 2
    .param p1, "messageCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iput p1, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 140
    return-void
.end method

.method public blacklist setTargetPkg(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iput-object p1, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 184
    return-void
.end method

.method public blacklist setTo(Landroid/app/MiuiNotification;)V
    .registers 3
    .param p1, "extraNotification"    # Landroid/app/MiuiNotification;

    .line 315
    iget v0, p1, Landroid/app/MiuiNotification;->traceType:I

    iput v0, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 316
    iget-object v0, p1, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 317
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->customizedIcon:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    .line 318
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->enableFloat:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    .line 319
    iget v0, p1, Landroid/app/MiuiNotification;->floatTime:I

    iput v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    .line 320
    iget-boolean v0, p1, Landroid/app/MiuiNotification;->enableKeyguard:Z

    iput-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    .line 321
    iget-object v0, p1, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    .line 322
    iget-object v0, p1, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    .line 323
    iget v0, p1, Landroid/app/MiuiNotification;->messageCount:I

    iput v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    .line 324
    iget-object v0, p1, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    .line 325
    return-void
.end method

.method public blacklist setTrace(ILjava/lang/CharSequence;)Landroid/app/MiuiNotification;
    .registers 3
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iput p1, p0, Landroid/app/MiuiNotification;->traceType:I

    .line 245
    iput-object p2, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    .line 246
    return-object p0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 271
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->customizedIcon:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/app/MiuiNotification;->traceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 274
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v0, p0, Landroid/app/MiuiNotification;->traceContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 277
    :cond_19
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    :goto_1c
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableFloat:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Landroid/app/MiuiNotification;->floatTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v0, p0, Landroid/app/MiuiNotification;->enableKeyguard:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    if-eqz v0, :cond_38

    .line 283
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Landroid/app/MiuiNotification;->targetPkg:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_3b

    .line 286
    :cond_38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    :goto_3b
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_48

    .line 289
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Landroid/app/MiuiNotification;->exitFloatingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b

    .line 292
    :cond_48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    :goto_4b
    iget v0, p0, Landroid/app/MiuiNotification;->messageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5d

    .line 296
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Landroid/app/MiuiNotification;->messageClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_60

    .line 299
    :cond_5d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    :goto_60
    return-void
.end method
