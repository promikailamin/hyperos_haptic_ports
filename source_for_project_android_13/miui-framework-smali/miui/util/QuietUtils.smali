.class public Lmiui/util/QuietUtils;
.super Ljava/lang/Object;
.source "QuietUtils.java"


# static fields
.field private static blacklist AUTHORIZE_PACKAGE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist PHONE_AND_SMS_PACKAGE:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "QuietUtils"

.field public static final blacklist TYPE_AUDIO_MANAGER:I = 0x8

.field public static final blacklist TYPE_MEDIA_PLAYER:I = 0x7

.field public static final blacklist TYPE_NOTIFICATION:I = 0x5

.field public static final blacklist TYPE_POWER_MANAGER:I = 0x1

.field public static final blacklist TYPE_POWER_MANAGER_SERVICE:I = 0x3

.field public static final blacklist TYPE_POWER_MANAGER_WAKEUP:I = 0x2

.field public static final blacklist TYPE_SOUND_POOL:I = 0x6

.field public static final blacklist TYPE_VIBRATOR:I = 0x4

.field public static final blacklist ZENMODE_TYPE_ALLW_FROM:Ljava/lang/String; = "5"

.field public static final blacklist ZENMODE_TYPE_CALL_STATUS:Ljava/lang/String; = "3"

.field public static final whitelist ZENMODE_TYPE_EVENT_STATUS:Ljava/lang/String; = "4"

.field public static final blacklist ZENMODE_TYPE_MESSAGE_STATUS:Ljava/lang/String; = "2"

.field public static final blacklist ZENMODE_TYPE_STATUS:Ljava/lang/String; = "1"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android"

    const-string v2, "com.android.deskclock"

    const-string v3, "com.android.providers.telephony"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/util/QuietUtils;->AUTHORIZE_PACKAGE:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.server.telecom"

    const-string v4, "com.miui.voip"

    const-string v5, "com.android.mms"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmiui/util/QuietUtils;->PHONE_AND_SMS_PACKAGE:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isCheckTopActivity"    # Z

    .line 281
    sget-object v0, Lmiui/util/QuietUtils;->AUTHORIZE_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 282
    return v1

    .line 285
    :cond_a
    if-eqz p2, :cond_13

    .line 286
    invoke-static {p0, p1}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 287
    return v1

    .line 289
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist checkNewQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 14
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "targetPkg"    # Ljava/lang/CharSequence;

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_8

    return v1

    .line 223
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 224
    .local v0, "context":Landroid/content/Context;
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 226
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "cPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v4

    .line 228
    .local v4, "zenMode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cpkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QuietUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "android"

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_ba

    :pswitch_4e
    goto :goto_b9

    .line 254
    :pswitch_4f
    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eq p1, v8, :cond_55

    if-ne p1, v9, :cond_b9

    .line 255
    :cond_55
    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 256
    const-string v8, "com.android.phone"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b9

    .line 257
    const-string v8, "com.miui.voip"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b9

    .line 258
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 259
    invoke-static {v9}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v5

    if-ne v5, v9, :cond_b9

    .line 262
    const-string v1, "speaker volume is 0"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v7

    .line 248
    :pswitch_7d
    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 249
    return v7

    .line 240
    :pswitch_84
    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b9

    .line 243
    return v7

    .line 231
    :pswitch_8e
    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 232
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 233
    const-string v5, "com.android.deskclock"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POWER_MANAGER_WAKEUP pkg:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v7

    .line 269
    :cond_b9
    :goto_b9
    return v1

    :pswitch_data_ba
    .packed-switch 0x2
        :pswitch_8e
        :pswitch_4e
        :pswitch_84
        :pswitch_4e
        :pswitch_7d
        :pswitch_4e
        :pswitch_4f
    .end packed-switch
.end method

.method private static blacklist checkNewZenModeEnable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 310
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static blacklist checkQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 12
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "targetPkg"    # Ljava/lang/CharSequence;

    .line 100
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_9

    .line 101
    invoke-static {p0, p1, p2, p3}, Lmiui/util/QuietUtils;->checkNewQuiet(IILjava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 104
    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 105
    .local v0, "context":Landroid/content/Context;
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 107
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "cPkg":Ljava/lang/String;
    const/4 v3, 0x2

    const-string v4, "com.android.deskclock"

    const-string v5, "android"

    const-string v6, "QuietUtils"

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_24a

    :pswitch_24
    goto/16 :goto_247

    .line 198
    :pswitch_26
    const/4 v4, 0x5

    if-eq p1, v4, :cond_2b

    if-ne p1, v3, :cond_247

    .line 199
    :cond_2b
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 200
    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 201
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 202
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    const-string v4, "AUDIO_MANAGER pkg:"

    if-nez v3, :cond_5c

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v7

    .line 206
    :cond_5c
    invoke-static {v0, v2, v7}, Lmiui/util/QuietUtils;->checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_247

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return v7

    .line 184
    :pswitch_77
    if-ne p1, v3, :cond_247

    .line 185
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 186
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    const-string v4, "MEDIA_PLAYER pkg:"

    if-nez v3, :cond_9c

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v7

    .line 190
    :cond_9c
    invoke-static {v0, v2, v7}, Lmiui/util/QuietUtils;->checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_247

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v7

    .line 171
    :pswitch_b7
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 172
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    const-string v4, "SOUND_POOL pkg:"

    if-nez v3, :cond_da

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v7

    .line 176
    :cond_da
    invoke-static {v0, v2, v7}, Lmiui/util/QuietUtils;->checkAuthorizePackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_247

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v7

    .line 150
    :pswitch_f5
    if-eqz p3, :cond_fc

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_102

    .line 151
    :cond_fc
    if-eqz p2, :cond_100

    move-object v3, p2

    goto :goto_102

    :cond_100
    const-string v3, ""

    .line 150
    :goto_102
    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 152
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    const-string v4, " targetPkg:"

    const-string v5, "NOTIFICATION pkg:"

    if-nez v3, :cond_12f

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v7

    .line 156
    :cond_12f
    if-eqz p3, :cond_158

    .line 157
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v7

    .line 161
    :cond_158
    if-eqz p2, :cond_247

    .line 162
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v7

    .line 134
    :pswitch_181
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 135
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 136
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 137
    const-string v3, "com.android.cellbroadcastreceiver"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    const-string v3, "CL"

    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 138
    :cond_1a3
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    const-string v4, "VIBRATOR pkg:"

    if-nez v3, :cond_1c0

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v7

    .line 142
    :cond_1c0
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v7

    .line 125
    :pswitch_1db
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 126
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POWER_MANAGER_WAKEUP pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v7

    .line 110
    :pswitch_204
    const/high16 v3, 0x10000000

    and-int/2addr v3, p1

    if-nez v3, :cond_216

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_216

    const/16 v3, 0xa

    if-eq p1, v3, :cond_216

    const/4 v3, 0x6

    if-eq p1, v3, :cond_216

    if-ne p1, v7, :cond_247

    .line 115
    :cond_216
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 116
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 117
    const-string v3, "com.google.android.talk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    .line 118
    invoke-static {v0, v2}, Lmiui/util/QuietUtils;->checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POWER_MANAGER pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v7

    .line 214
    :cond_247
    :goto_247
    const/4 v3, 0x0

    return v3

    nop

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_204
        :pswitch_1db
        :pswitch_24
        :pswitch_181
        :pswitch_f5
        :pswitch_b7
        :pswitch_77
        :pswitch_26
    .end packed-switch
.end method

.method private static blacklist checkZenmod(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge v0, v3, :cond_21

    .line 299
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 300
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 301
    const-string v0, "com.miui.voip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    .line 299
    :goto_20
    return v1

    .line 303
    :cond_21
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lmiui/util/QuietUtils;->PHONE_AND_SMS_PACKAGE:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 305
    const-string v0, "4"

    invoke-static {p0, v0}, Lmiui/util/QuietUtils;->isZenmode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    .line 303
    :goto_39
    return v1
.end method

.method private static blacklist isTopActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "activity"

    .line 352
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 353
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 355
    .local v4, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_36

    .line 356
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v5

    move v7, v0

    :goto_27
    if-ge v7, v6, :cond_36

    aget-object v8, v5, v7

    .line 357
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_2f} :catch_38

    if-eqz v9, :cond_33

    .line 358
    const/4 v0, 0x1

    return v0

    .line 356
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 362
    .end local v4    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_36
    goto :goto_11

    .line 365
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_37
    goto :goto_55

    .line 363
    :catch_38
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get RunningProcessInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuietUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_55
    return v0
.end method

.method private static blacklist isZenmode(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://antispamCommon/zenmode"

    .line 324
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 323
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_2d
    .catchall {:try_start_1 .. :try_end_17} :catchall_2b

    move-object v0, v1

    .line 326
    if-eqz v0, :cond_23

    .line 327
    const/4 v1, 0x1

    .line 332
    if-eqz v0, :cond_22

    .line 334
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    .line 337
    goto :goto_22

    .line 335
    :catch_21
    move-exception v2

    .line 327
    :cond_22
    :goto_22
    return v1

    .line 332
    :cond_23
    if-eqz v0, :cond_51

    .line 334
    :try_start_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 337
    :goto_28
    goto :goto_51

    .line 335
    :catch_29
    move-exception v1

    goto :goto_28

    .line 332
    :catchall_2b
    move-exception v1

    goto :goto_53

    .line 329
    :catch_2d
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2e
    const-string v2, "QuietUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when checkZenmodConfig :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_2b

    .line 332
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_51

    .line 334
    :try_start_4d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_29

    goto :goto_28

    .line 340
    :cond_51
    :goto_51
    const/4 v1, 0x0

    return v1

    .line 332
    :goto_53
    if-eqz v0, :cond_5a

    .line 334
    :try_start_55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    .line 337
    goto :goto_5a

    .line 335
    :catch_59
    move-exception v2

    .line 339
    :cond_5a
    :goto_5a
    throw v1
.end method
