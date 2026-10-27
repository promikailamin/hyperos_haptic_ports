.class final Lcom/android/server/media/MediaButtonReceiverHolder;
.super Ljava/lang/Object;
.source "MediaButtonReceiverHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaButtonReceiverHolder$ComponentType;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","

.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x2

.field public static final COMPONENT_TYPE_BROADCAST:I = 0x1

.field public static final COMPONENT_TYPE_INVALID:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x3

.field private static final DEBUG_KEY_EVENT:Z = true

.field private static final PACKAGE_MANAGER_COMMON_FLAGS:I = 0xc0000

.field private static final TAG:Ljava/lang/String; = "PendingIntentHolder"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mComponentType:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mUserId:I


# direct methods
.method private constructor <init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 145
    iput-object p2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 146
    iput-object p3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 147
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 148
    iput p4, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 149
    return-void
.end method

.method private constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 153
    iput-object p2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 155
    iput-object p3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 157
    return-void
.end method

.method public static create(ILandroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 7
    .param p0, "userId"    # I
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "sessionPackageName"    # Ljava/lang/String;

    .line 120
    if-nez p1, :cond_4

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_4
    invoke-static {p1}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentType(Landroid/app/PendingIntent;)I

    move-result v0

    .line 124
    .local v0, "componentType":I
    invoke-static {p1, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentName(Landroid/app/PendingIntent;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 125
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_14

    .line 126
    new-instance v2, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v2

    .line 133
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unresolvable implicit intent is set, pi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PendingIntentHolder"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v2, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-object v2
.end method

.method public static create(ILandroid/content/ComponentName;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "broadcastReceiver"    # Landroid/content/ComponentName;

    .line 138
    new-instance v0, Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v0
.end method

.method private static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 2
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 364
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_7

    .line 365
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 366
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    .line 367
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 370
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getComponentName(Landroid/app/PendingIntent;I)Landroid/content/ComponentName;
    .registers 8
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "componentType"    # I

    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    packed-switch p1, :pswitch_data_56

    goto :goto_1f

    .line 331
    :pswitch_8
    const v1, 0xc0004

    invoke-virtual {p0, v1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v0

    .line 333
    goto :goto_1f

    .line 324
    :pswitch_10
    const v1, 0xd0001

    invoke-virtual {p0, v1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v0

    .line 329
    goto :goto_1f

    .line 335
    :pswitch_18
    const v1, 0xc0002

    invoke-virtual {p0, v1}, Landroid/app/PendingIntent;->queryIntentComponents(I)Ljava/util/List;

    move-result-object v0

    .line 340
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 341
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v2}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v3

    .line 342
    .local v3, "componentInfo":Landroid/content/pm/ComponentInfo;
    if-eqz v3, :cond_53

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_53

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_53

    .line 345
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 347
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :cond_53
    goto :goto_23

    .line 349
    :cond_54
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_18
        :pswitch_10
        :pswitch_8
    .end packed-switch
.end method

.method private static getComponentType(Landroid/app/PendingIntent;)I
    .registers 2
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 277
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_8
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 280
    const/4 v0, 0x2

    return v0

    .line 281
    :cond_10
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isService()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    .line 284
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_1f
    :goto_1f
    const/4 v0, 0x3

    return v0
.end method

.method private static getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 296
    if-nez p1, :cond_4

    .line 297
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 301
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const v1, 0xc0001

    :try_start_b
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_f} :catch_14

    .line 303
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_13

    .line 304
    const/4 v2, 0x2

    return v2

    .line 307
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_13
    goto :goto_15

    .line 306
    :catch_14
    move-exception v1

    .line 309
    :goto_15
    const v1, 0xc0004

    :try_start_18
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1c} :catch_21

    .line 311
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_20

    .line 312
    const/4 v2, 0x3

    return v2

    .line 315
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_20
    goto :goto_22

    .line 314
    :catch_21
    move-exception v1

    .line 317
    :goto_22
    const/4 v1, 0x1

    return v1
.end method

.method public static unflattenFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaButtonReceiverInfo"    # Ljava/lang/String;

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 88
    return-object v1

    .line 90
    :cond_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "tokens":[Ljava/lang/String;
    if-eqz v0, :cond_3f

    array-length v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    array-length v2, v0

    if-eq v2, v3, :cond_19

    goto :goto_3f

    .line 94
    :cond_19
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 95
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_23

    .line 96
    return-object v1

    .line 98
    :cond_23
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 100
    .local v5, "userId":I
    array-length v6, v0

    if-ne v6, v3, :cond_34

    .line 101
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_38

    .line 102
    :cond_34
    invoke-static {p0, v2}, Lcom/android/server/media/MediaButtonReceiverHolder;->getComponentType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v3

    :goto_38
    nop

    .line 103
    .local v3, "componentType":I
    new-instance v4, Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    return-object v4

    .line 92
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "componentType":I
    .end local v5    # "userId":I
    :cond_3f
    :goto_3f
    return-object v1
.end method


# virtual methods
.method public flattenToString()Ljava/lang/String;
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    .line 267
    const-string v0, ""

    return-object v0

    .line 269
    :cond_7
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 271
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 272
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 269
    const-string v0, ","

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    return v0
.end method

.method public send(Landroid/content/Context;Landroid/view/KeyEvent;Ljava/lang/String;ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;J)Z
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
    .param p3, "callingPackageName"    # Ljava/lang/String;
    .param p4, "resultCode"    # I
    .param p5, "onFinishedListener"    # Landroid/app/PendingIntent$OnFinished;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "fgsAllowlistDurationMs"    # J

    .line 194
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 195
    .local v12, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v13, p3

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v14

    .line 201
    .local v14, "options":Landroid/app/BroadcastOptions;
    const/4 v5, 0x0

    const/16 v6, 0x139

    const-string v7, ""

    move-object v2, v14

    move-wide/from16 v3, p7

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 205
    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v3, "Sending "

    const-string v9, "PendingIntentHolder"

    if-eqz v2, :cond_90

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to the last known PendingIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :try_start_5a
    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v8, 0x0

    .line 213
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16
    :try_end_61
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5a .. :try_end_61} :catch_74

    .line 211
    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object v5, v12

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v15, v9

    move-object/from16 v9, v16

    :try_start_6d
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_70
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6d .. :try_end_70} :catch_72

    .line 217
    goto/16 :goto_e9

    .line 214
    :catch_72
    move-exception v0

    goto :goto_76

    :catch_74
    move-exception v0

    move-object v15, v9

    .line 215
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :goto_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v2, 0x0

    return v2

    .line 218
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_90
    move-object v15, v9

    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_10f

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to the restored intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    iget v2, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 226
    .local v2, "userHandle":Landroid/os/UserHandle;
    :try_start_cc
    iget v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    packed-switch v4, :pswitch_data_116

    .line 236
    const/4 v4, 0x0

    .line 237
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_e4

    .line 231
    :pswitch_d7
    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    goto :goto_e7

    .line 228
    :pswitch_e0
    invoke-virtual {v10, v12, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 229
    goto :goto_e7

    .line 236
    :goto_e4
    invoke-virtual {v10, v12, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e7} :catch_ea

    .line 243
    :goto_e7
    nop

    .line 244
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    nop

    .line 249
    :goto_e9
    return v0

    .line 239
    .restart local v2    # "userHandle":Landroid/os/UserHandle;
    :catch_ea
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending media button to the restored intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 v3, 0x0

    return v3

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_10f
    const/4 v3, 0x0

    const-string v0, "Shouldn\'t be happen -- pending intent or component name must be set"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v3

    :pswitch_data_116
    .packed-switch 0x2
        :pswitch_e0
        :pswitch_d7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v1, "}"

    const-string v2, ", type="

    if-eqz v0, :cond_2d

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MBR {pi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored MBR {component="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
