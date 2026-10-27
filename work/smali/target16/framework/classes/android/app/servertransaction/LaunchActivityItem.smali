.class public Landroid/app/servertransaction/LaunchActivityItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "LaunchActivityItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/LaunchActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityClientController:Landroid/app/IActivityClientController;

.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final greylist-max-o mCurConfig:Landroid/content/res/Configuration;

.field private final blacklist mDeviceId:I

.field private final blacklist mDisplayId:I

.field private final greylist-max-o mIdent:I

.field private greylist mInfo:Landroid/content/pm/ActivityInfo;

.field private final blacklist mInitialCallerInfoAccessToken:Landroid/os/IBinder;

.field private greylist mIntent:Landroid/content/Intent;

.field private final greylist-max-o mIsForward:Z

.field private final blacklist mLaunchedFromBubble:Z

.field private final greylist-max-o mOverrideConfig:Landroid/content/res/Configuration;

.field private final greylist-max-o mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPersistentState:Landroid/os/PersistableBundle;

.field private final greylist-max-o mProcState:I

.field private final greylist-max-o mProfilerInfo:Landroid/app/ProfilerInfo;

.field private final greylist-max-o mReferrer:Ljava/lang/String;

.field private final blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

.field private final blacklist mShareableActivityToken:Landroid/os/IBinder;

.field private final greylist-max-o mState:Landroid/os/Bundle;

.field private final blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field private final greylist-max-o mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 306
    new-instance v0, Landroid/app/servertransaction/LaunchActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/LaunchActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/LaunchActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;I)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/IBinder;",
            "Landroid/app/IActivityClientController;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            "I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    .line 179
    iput p2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    .line 180
    iput-object p3, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    .line 181
    iput-object p4, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 182
    iput p5, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    .line 183
    iput-object p6, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    .line 184
    iput-object p7, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 185
    iput p8, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    .line 186
    iput-object p9, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    .line 187
    iput-object p10, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    .line 188
    iput-object p11, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    .line 189
    iput-object p12, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    .line 190
    iput-object p13, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 191
    iput-boolean p14, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    .line 192
    iput-object p15, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 193
    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    .line 194
    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    .line 195
    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    .line 196
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mLaunchedFromBubble:Z

    .line 197
    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 198
    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 199
    move-object/from16 p1, p22

    iput-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 200
    move/from16 p1, p23

    iput p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    .line 201
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;I)V
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/Intent;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/IVoiceInteractor;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            "Z",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/IBinder;",
            "Landroid/app/IActivityClientController;",
            "Landroid/os/IBinder;",
            "Z",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            "I)V"
        }
    .end annotation

    .line 148
    move-object/from16 v0, p11

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p17

    new-instance v5, Landroid/content/res/Configuration;

    move-object/from16 v6, p5

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v6, Landroid/content/res/Configuration;

    move-object/from16 v7, p6

    invoke-direct {v6, v7}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 150
    const/4 v7, 0x0

    if-eqz v0, :cond_22

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v9, v8

    goto :goto_23

    :cond_22
    move-object v9, v7

    .line 151
    :goto_23
    if-eqz v1, :cond_2c

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    move-object v10, v0

    goto :goto_2d

    :cond_2c
    move-object v10, v7

    .line 152
    :goto_2d
    if-eqz v2, :cond_36

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    goto :goto_37

    :cond_36
    move-object v11, v7

    .line 153
    :goto_37
    if-eqz v3, :cond_40

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v0

    goto :goto_41

    :cond_40
    move-object v12, v7

    .line 155
    :goto_41
    if-eqz v4, :cond_48

    new-instance v7, Landroid/app/ProfilerInfo;

    invoke-direct {v7, v4}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    :cond_48
    move-object v15, v7

    new-instance v0, Landroid/window/ActivityWindowInfo;

    move-object/from16 v1, p24

    invoke-direct {v0, v1}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    .line 148
    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v13, p15

    move/from16 v14, p16

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v18, p20

    move/from16 v19, p21

    move-object/from16 v20, p22

    move-object/from16 v21, p23

    move/from16 v23, p25

    move-object/from16 v22, v0

    move-object v3, v5

    move-object v4, v6

    move-object/from16 v0, p0

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v23}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;I)V

    .line 159
    new-instance v1, Landroid/content/Intent;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 160
    new-instance v1, Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p4

    invoke-direct {v1, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 161
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 26

    .line 276
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 278
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 279
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v7

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v9

    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v10

    sget-object v11, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 286
    invoke-virtual {v0, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    sget-object v12, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 287
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    sget-object v13, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 288
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    sget-object v15, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 290
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 292
    invoke-static/range {v17 .. v17}, Landroid/app/IActivityClientController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;

    move-result-object v17

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v22, v1

    sget-object v1, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 298
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ActivityWindowInfo;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ActivityWindowInfo;

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 276
    move-object/from16 v0, v22

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v23}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;I)V

    .line 302
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 303
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iput-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 304
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/LaunchActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z
    .registers 6

    .line 377
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 378
    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    .line 380
    :cond_b
    if-eqz p1, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iget v3, p1, Landroid/content/pm/ActivityInfo;->flags:I

    if-ne v0, v3, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 381
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 382
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 383
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    .line 380
    :goto_41
    return v1
.end method

.method private static blacklist areBundlesEqualRoughly(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .registers 2

    .line 398
    invoke-static {p0}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result p0

    invoke-static {p1}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result p1

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static blacklist getRoughBundleHashCode(Landroid/os/BaseBundle;)I
    .registers 1

    .line 393
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 318
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 319
    return v0

    .line 321
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_f5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_f5

    .line 324
    :cond_13
    check-cast p1, Landroid/app/servertransaction/LaunchActivityItem;

    .line 325
    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1d

    iget-object v2, p1, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2b

    :cond_1d
    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    .line 326
    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2b
    move v2, v0

    goto :goto_2e

    :cond_2d
    move v2, v1

    .line 327
    :goto_2e
    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    .line 328
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    if-ne v2, v3, :cond_f3

    iget-object v2, p1, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 329
    invoke-direct {p0, v2}, Landroid/app/servertransaction/LaunchActivityItem;->activityInfoEqual(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 330
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    iget v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    if-ne v2, v3, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    .line 332
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    iget v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    if-ne v2, v3, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    .line 333
    invoke-static {v2, v3}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqualRoughly(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    .line 334
    invoke-static {v2, v3}, Landroid/app/servertransaction/LaunchActivityItem;->areBundlesEqualRoughly(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    .line 335
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    .line 336
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v2, :cond_a0

    move v2, v0

    goto :goto_a1

    :cond_a0
    move v2, v1

    :goto_a1
    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v3, :cond_a7

    move v3, v0

    goto :goto_a8

    :cond_a7
    move v3, v1

    :goto_a8
    if-ne v2, v3, :cond_f3

    iget-boolean v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    if-ne v2, v3, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 339
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    .line 340
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    .line 341
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 342
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 343
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object v3, p1, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 345
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget v2, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    iget p1, p1, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    if-ne v2, p1, :cond_f3

    goto :goto_f4

    :cond_f3
    move v0, v1

    .line 327
    :goto_f4
    return v0

    .line 322
    :cond_f5
    :goto_f5
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 31

    .line 218
    move-object/from16 v0, p0

    const-string v1, "activityStart"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 219
    new-instance v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v5, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    iget-object v6, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    iget v7, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    iget-object v8, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget-object v10, v0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    iget-object v11, v0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v12, v0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    iget-object v13, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v14, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    iget-object v15, v0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-wide/from16 v26, v2

    iget-boolean v2, v0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    iget-object v3, v0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mLaunchedFromBubble:Z

    move/from16 v22, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v19, p1

    move-object/from16 v25, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v25}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    .line 224
    iget v0, v0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    .line 225
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 226
    return-void
.end method

.method public blacklist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 351
    nop

    .line 352
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 353
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 354
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    add-int/2addr v1, v0

    .line 355
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 356
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 357
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    add-int/2addr v1, v0

    .line 358
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 359
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 360
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result v0

    add-int/2addr v1, v0

    .line 361
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/app/servertransaction/LaunchActivityItem;->getRoughBundleHashCode(Landroid/os/BaseBundle;)I

    move-result v0

    add-int/2addr v1, v0

    .line 362
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 363
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 364
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    add-int/2addr v1, v0

    .line 365
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    add-int/2addr v1, v0

    .line 366
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 367
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 368
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 369
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 370
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 371
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 372
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    add-int/2addr v1, v0

    .line 373
    return v1
.end method

.method public blacklist postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 3

    .line 231
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->countLaunchingActivities(I)V

    .line 232
    return-void
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 4

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->countLaunchingActivities(I)V

    .line 206
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->updateProcessState(IZ)V

    .line 207
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;I)V

    .line 208
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;I)V

    .line 209
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 210
    iget-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    if-eqz p1, :cond_26

    .line 211
    iget-object p1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    invoke-static {p1}, Landroid/app/ActivityClient;->setActivityClientController(Landroid/app/IActivityClientController;)Landroid/app/IActivityClientController;

    .line 213
    :cond_26
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchActivityItem{activityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",curConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",procState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",persistentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sceneTransitionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",profilerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",assistToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shareableActivityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 246
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 247
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIdent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 249
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 250
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 253
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProcState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 255
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 256
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 257
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 258
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 259
    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIsForward:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mProfilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 261
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 262
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityClientController:Landroid/app/IActivityClientController;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 263
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mShareableActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 264
    iget-boolean v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mLaunchedFromBubble:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 265
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 266
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInitialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 267
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 268
    iget v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 271
    iget-object v0, p0, Landroid/app/servertransaction/LaunchActivityItem;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 272
    return-void
.end method
