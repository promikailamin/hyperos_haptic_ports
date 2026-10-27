.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field static final ENFORCE_DUCKING:Z = true

.field static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field static final ENFORCE_FADEOUT_FOR_FOCUS_LOSS:Z = true

.field static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field private static final MAX_STACK_SIZE:I = 0x64

.field private static final MSG_L_DELAYED_FOCUS_CHANGE:I = 0x3

.field private static final MSG_L_FOCUS_LOSS_AFTER_FADE:I = 0x1

.field private static final MSL_L_FORGET_UID:I = 0x2

.field private static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mEventLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static final mMetricsId:Ljava/lang/String; = "audio.focus"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mExtFocusChangeCounter:J

.field private final mExtFocusChangeLock:Ljava/lang/Object;

.field private mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusHandler:Landroid/os/Handler;

.field private mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusThread:Landroid/os/HandlerThread;

.field private mMultiAudioFocusEnabled:Z

.field mMultiAudioFocusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyFocusOwnerOnDuck:Z

.field private mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private mRingOrCallActive:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusHandler(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusPolicy(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiAudioFocusEnabled(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingOrCallActive(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->postForgetUidLater(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicyOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetUSAGES_TO_MUTE_IN_RING_OR_CALL()[I
    .registers 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string v2, "focus commands as seen by MediaFocusControl"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 980
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x1
        0xe
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .registers 8
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "pfe"    # Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 389
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 673
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 681
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 719
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 725
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 731
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 107
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 108
    const-string v2, "appops"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 109
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 111
    .local v2, "cr":Landroid/content/ContentResolver;
    nop

    .line 112
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    .line 111
    const-string/jumbo v4, "multi_audio_focus_enabled"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_54

    move v0, v1

    :cond_54
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 113
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->initFocusThreading()V

    .line 114
    return-void
.end method

.method private canReassignAudioFocus()Z
    .registers 2

    .line 565
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 566
    const/4 v0, 0x0

    return v0

    .line 568
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 937
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 938
    .local v0, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 939
    .local v1, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 940
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 941
    .local v2, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 942
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 943
    .end local v2    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_a

    .line 944
    :cond_20
    return-void
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 398
    const-string v0, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 401
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 402
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_e

    .line 404
    :cond_1e
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v2, :cond_2d

    .line 406
    const-string v2, "No external focus policy\n"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e

    .line 408
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External focus policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", focus owners:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V

    .line 411
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_91

    .line 412
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify on duck:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In ring or call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    return-void

    .line 411
    :catchall_91
    move-exception v1

    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v1
.end method

.method private dumpMultiAudioFocus(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multi Audio Focus enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1355
    const-string v0, "Multi Audio Focus List:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1358
    .local v2, "multifr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    .line 1359
    .end local v2    # "multifr":Lcom/android/server/audio/FocusRequester;
    goto :goto_30

    .line 1360
    :cond_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    :cond_43
    return-void
.end method

.method protected static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 3
    .param p0, "focusGain"    # I
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 990
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 1015
    const/4 v0, 0x0

    return v0

    .line 1000
    :sswitch_9
    const/16 v0, 0x2bc

    return v0

    .line 1010
    :sswitch_c
    const/16 v0, 0x1f4

    return v0

    .line 993
    :sswitch_f
    const/16 v0, 0x3e8

    return v0

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_c
        0x3 -> :sswitch_c
        0x4 -> :sswitch_9
        0x5 -> :sswitch_c
        0x6 -> :sswitch_9
        0x7 -> :sswitch_c
        0x8 -> :sswitch_c
        0x9 -> :sswitch_c
        0xa -> :sswitch_c
        0xb -> :sswitch_9
        0xc -> :sswitch_9
        0xd -> :sswitch_c
        0xe -> :sswitch_f
        0x10 -> :sswitch_9
        0x3ea -> :sswitch_c
        0x3eb -> :sswitch_9
    .end sparse-switch
.end method

.method private initFocusThreading()V
    .registers 3

    .line 1409
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaFocusControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    .line 1410
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1411
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$3;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    .line 1450
    return-void
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 3
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .line 572
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private notifyTopOfAudioFocusStack()V
    .registers 8

    .line 275
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_86

    .line 276
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 277
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 278
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->get()Lcom/android/server/audio/PlaybackActivityMonitorStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->getRouteCastUID()I

    move-result v0

    .line 279
    .local v0, "mRouteCastUID":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_86

    .line 280
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v2

    const-string v3, "MediaFocusControl"

    if-eqz v2, :cond_5e

    .line 281
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 282
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v4, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 284
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 285
    .local v5, "focusOwner":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v5, v0}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 286
    const-string/jumbo v6, "notifyTopOfAudioFocusStack if samll window has audiofocus and is mFocusStack.peek(), need handleFocusGain for phone app"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v5, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 288
    goto :goto_5d

    .line 290
    .end local v5    # "focusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_5c
    goto :goto_40

    .line 291
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5d
    :goto_5d
    goto :goto_86

    .line 292
    :cond_5e
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 293
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .restart local v4    # "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 296
    .restart local v5    # "focusOwner":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v5, v0}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 297
    const-string/jumbo v6, "notifyTopOfAudioFocusStack if samll window has audiofocus and is not mFocusStack.peek(), need handleFocusGain for samll window"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v5, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 299
    goto :goto_86

    .line 301
    .end local v5    # "focusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_85
    goto :goto_69

    .line 307
    .end local v0    # "mRouteCastUID":I
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_86
    :goto_86
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 308
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 309
    .local v2, "multifr":Lcom/android/server/audio/FocusRequester;
    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 310
    invoke-virtual {v2, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 312
    .end local v2    # "multifr":Lcom/android/server/audio/FocusRequester;
    :cond_ad
    goto :goto_98

    .line 314
    :cond_ae
    return-void
.end method

.method private postForgetUidLater(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1376
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-direct {v1, p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    .line 1377
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1376
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1379
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 9
    .param p1, "focusGain"    # I
    .param p2, "fr"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 324
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 327
    .local v0, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 328
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 329
    .local v2, "focusLoser":Lcom/android/server/audio/FocusRequester;
    nop

    .line 330
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 331
    .local v3, "isDefinitiveLoss":Z
    if-eqz v3, :cond_2d

    .line 332
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v2    # "focusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_2d
    goto :goto_13

    .line 337
    :cond_2e
    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 338
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 339
    .local v2, "multifocusLoser":Lcom/android/server/audio/FocusRequester;
    nop

    .line 340
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 341
    .restart local v3    # "isDefinitiveLoss":Z
    if-eqz v3, :cond_5a

    .line 342
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v2    # "multifocusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_5a
    goto :goto_40

    .line 347
    :cond_5b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 348
    .local v2, "clientToRemove":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 350
    .end local v2    # "clientToRemove":Ljava/lang/String;
    goto :goto_5f

    .line 351
    :cond_71
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf_mi(ILcom/android/server/audio/FocusRequester;ZLjava/lang/String;)V
    .registers 10
    .param p1, "focusGain"    # I
    .param p2, "fr"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z
    .param p4, "clientId"    # Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 360
    .local v0, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_34

    .line 361
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 362
    .local v2, "focusLoser":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v2, p4}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 363
    nop

    .line 364
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 365
    .local v3, "isDefinitiveLoss":Z
    if-eqz v3, :cond_33

    .line 366
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v2    # "focusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_33
    goto :goto_13

    .line 372
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_61

    .line 373
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 374
    .local v2, "multifocusLoser":Lcom/android/server/audio/FocusRequester;
    nop

    .line 375
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    .line 376
    .restart local v3    # "isDefinitiveLoss":Z
    if-eqz v3, :cond_60

    .line 377
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2    # "multifocusLoser":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "isDefinitiveLoss":Z
    :cond_60
    goto :goto_46

    .line 382
    :cond_61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    .local v2, "clientToRemove":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 385
    .end local v2    # "clientToRemove":Ljava/lang/String;
    goto :goto_65

    .line 386
    :cond_77
    return-void
.end method

.method private pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I
    .registers 9
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .line 592
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 593
    .local v0, "lastLockedFocusOwnerIndex":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "index":I
    :goto_e
    if-ltz v1, :cond_22

    .line 594
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 595
    move v0, v1

    .line 593
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 598
    .end local v1    # "index":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_44

    .line 600
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v4, "MediaFocusControl"

    const-string v5, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    invoke-direct {p0, v1, p1, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 604
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    return v2

    .line 611
    :cond_44
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 615
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 616
    .local v1, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v4, v0, -0x1

    .local v4, "index":I
    :goto_50
    if-ltz v4, :cond_76

    .line 617
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 618
    invoke-virtual {v5, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 619
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v6

    .line 618
    invoke-virtual {v5, v6, p1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v5

    .line 620
    .local v5, "isDefinitiveLoss":Z
    if-eqz v5, :cond_73

    .line 621
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v6}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    .end local v5    # "isDefinitiveLoss":Z
    :cond_73
    add-int/lit8 v4, v4, -0x1

    goto :goto_50

    .line 624
    .end local v4    # "index":I
    :cond_76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 628
    .local v5, "clientToRemove":Ljava/lang/String;
    invoke-direct {p0, v5, v3, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 630
    .end local v5    # "clientToRemove":Ljava/lang/String;
    goto :goto_7a

    .line 632
    :cond_8a
    const/4 v2, 0x2

    return v2
.end method

.method private removeFocusEntryForExtPolicyOnDeath(Landroid/os/IBinder;)V
    .registers 11
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 531
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 532
    return-void

    .line 534
    :cond_9
    const/4 v0, 0x0

    .line 535
    .local v0, "released":Z
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 536
    .local v1, "owners":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 537
    .local v2, "ownerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;>;"
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 538
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 539
    .local v3, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 540
    .local v4, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 541
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 542
    sget-object v5, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focus requester:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 543
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 544
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pack:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 545
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " died"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 547
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 548
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    .line 549
    goto :goto_7e

    .line 551
    .end local v3    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_7d
    goto :goto_14

    .line 552
    :cond_7e
    :goto_7e
    return-void
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "abandonSource":Landroid/media/AudioFocusInfo;
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 431
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 433
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/audio/MediaFocusControlStub;->setLastReleasedUid(I)V

    .line 434
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    invoke-interface {v2, v1, v3}, Lcom/android/server/audio/MediaFocusControlStub;->handleDelayedMessageWithdraw(Lcom/android/server/audio/FocusRequester;Landroid/os/Handler;)V

    .line 436
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->maybeRelease()V

    .line 437
    if-eqz p3, :cond_3c

    .line 438
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 440
    :cond_3c
    if-eqz p2, :cond_41

    .line 442
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 444
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_41
    goto :goto_7f

    .line 449
    :cond_42
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 450
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 451
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 452
    .local v2, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 456
    if-eqz p3, :cond_7b

    .line 457
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 460
    :cond_7b
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->maybeRelease()V

    .line 462
    .end local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_7e
    goto :goto_48

    .line 465
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_7f
    :goto_7f
    if-eqz v0, :cond_88

    .line 466
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 467
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 470
    :cond_88
    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 471
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 472
    .local v1, "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 474
    .restart local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 475
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 476
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 478
    .end local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_b2
    goto :goto_9a

    .line 480
    :cond_b3
    if-eqz p2, :cond_b8

    .line 482
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 485
    .end local v1    # "listIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_b8
    return-void
.end method

.method private removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .registers 10
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 493
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 494
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 497
    .local v0, "isTopOfStackForClientToRemove":Z
    :goto_1a
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 498
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 499
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 500
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaFocusControl"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focus requester:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 503
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 504
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pack:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 505
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " died"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 507
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 509
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 511
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    invoke-interface {v4, v3, v5}, Lcom/android/server/audio/MediaFocusControlStub;->handleDelayedMessageWithdraw(Lcom/android/server/audio/FocusRequester;Landroid/os/Handler;)V

    .line 514
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 516
    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_a3
    goto/16 :goto_20

    .line 517
    :cond_a5
    if-eqz v0, :cond_aa

    .line 520
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 522
    :cond_aa
    return-void
.end method

.method private runAudioCheckerForRingOrCallAsync(Z)V
    .registers 3
    .param p1, "enteringRingOrCall"    # Z

    .line 1299
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 1318
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$2;->start()V

    .line 1319
    return-void
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 21
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 1239
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.focus"

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 1241
    move-object/from16 v12, p4

    invoke-virtual {v0, v2, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 1242
    invoke-virtual {v0, v2, v11}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v3, "abandonAudioFocus"

    .line 1243
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1247
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1248
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1247
    const/4 v13, 0x0

    invoke-interface {v0, v2, v3, v11, v13}, Lcom/android/server/am/SmartPowerServiceStub;->recordAudioFocus(IILjava/lang/String;Z)V

    .line 1252
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaFocusControl"

    .line 1256
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1252
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1259
    const/4 v14, 0x1

    :try_start_7c
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_7f
    .catch Ljava/util/ConcurrentModificationException; {:try_start_7c .. :try_end_7f} :catch_c0

    .line 1261
    :try_start_7f
    iget-object v0, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v0, :cond_9f

    .line 1262
    new-instance v0, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1265
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1266
    monitor-exit v15

    return v14

    .line 1270
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_9f
    iget-boolean v0, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1271
    invoke-virtual {v2, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_ab

    move v2, v14

    goto :goto_ac

    :cond_ab
    move v2, v13

    :goto_ac
    and-int/2addr v0, v2

    .line 1272
    .local v0, "exitingRingOrCall":Z
    if-eqz v0, :cond_b1

    iput-boolean v13, v1, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 1274
    :cond_b1
    invoke-direct {v1, v11, v14, v14}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1276
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_bb

    .line 1277
    invoke-direct {v1, v13}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1279
    .end local v0    # "exitingRingOrCall":Z
    :cond_bb
    monitor-exit v15

    .line 1286
    goto :goto_dc

    .line 1279
    :catchall_bd
    move-exception v0

    monitor-exit v15
    :try_end_bf
    .catchall {:try_start_7f .. :try_end_bf} :catchall_bd

    .end local p0    # "this":Lcom/android/server/audio/MediaFocusControl;
    .end local p1    # "fl":Landroid/media/IAudioFocusDispatcher;
    .end local p2    # "clientId":Ljava/lang/String;
    .end local p3    # "aa":Landroid/media/AudioAttributes;
    .end local p4    # "callingPackageName":Ljava/lang/String;
    :try_start_bf
    throw v0
    :try_end_c0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_bf .. :try_end_c0} :catch_c0

    .line 1280
    .restart local p0    # "this":Lcom/android/server/audio/MediaFocusControl;
    .restart local p1    # "fl":Landroid/media/IAudioFocusDispatcher;
    .restart local p2    # "clientId":Ljava/lang/String;
    .restart local p3    # "aa":Landroid/media/AudioAttributes;
    .restart local p4    # "callingPackageName":Ljava/lang/String;
    :catch_c0
    move-exception v0

    .line 1284
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1288
    .end local v0    # "cme":Ljava/util/ConcurrentModificationException;
    :goto_dc
    return v14
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 8
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 684
    if-nez p1, :cond_3

    .line 685
    return-void

    .line 687
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    const/4 v1, 0x0

    .line 689
    .local v1, "found":Z
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 690
    .local v3, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 691
    const/4 v1, 0x1

    .line 692
    goto :goto_2a

    .line 694
    .end local v3    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_29
    goto :goto_d

    .line 695
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_2e

    .line 696
    monitor-exit v0

    return-void

    .line 698
    :cond_2e
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 701
    .end local v1    # "found":Z
    monitor-exit v0

    .line 702
    return-void

    .line 701
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected discardAudioFocusOwner()V
    .registers 6

    .line 216
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 219
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 220
    .local v1, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 222
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 224
    .end local v1    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_1c
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I

    .line 917
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 920
    monitor-exit v0

    return v2

    .line 923
    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1a

    .line 924
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_26

    .line 926
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 928
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :goto_26
    if-nez v1, :cond_2a

    .line 930
    monitor-exit v0

    return v2

    .line 932
    :cond_2a
    invoke-virtual {v1, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    move-result v2

    monitor-exit v0

    return v2

    .line 933
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 5
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;
    .param p3, "forceDuck"    # Z

    .line 131
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 120
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpMultiAudioFocus(Ljava/io/PrintWriter;)V

    .line 124
    return-void
.end method

.method public fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 4
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "loser"    # Lcom/android/server/audio/FocusRequester;

    .line 156
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1, p2}, Lcom/android/server/audio/PlayerFocusEnforcer;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    return v0
.end method

.method public forgetUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    .line 162
    return-void
.end method

.method protected getAllAudioFocus()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 959
    .local v0, "focusPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 961
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 962
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 963
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 966
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2e
    monitor-exit v1

    .line 967
    return-object v0

    .line 966
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v2
.end method

.method protected getCurrentAudioFocus()I
    .registers 3

    .line 947
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 949
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 951
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    monitor-exit v0

    return v1

    .line 953
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .registers 4
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1349
    invoke-static {p1}, Lcom/android/server/audio/FadeOutManager;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusHandler()Landroid/os/Handler;
    .registers 2

    .line 1404
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getFocusStack()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .local v1, "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 238
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    nop

    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_14

    .line 240
    :cond_29
    monitor-exit v0

    return-object v1

    .line 241
    .end local v1    # "stack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public getMultiAudioFocusEnabled()Z
    .registers 2

    .line 1342
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    return v0
.end method

.method hasAudioFocusUsers()Z
    .registers 3

    .line 205
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 207
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .registers 2

    .line 679
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method public mutePlayersForCall([I)V
    .registers 3
    .param p1, "usagesToMute"    # [I

    .line 146
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    .line 147
    return-void
.end method

.method noFocusForSuspendedApp(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 181
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 186
    .local v3, "focusOwner":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, p2}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 187
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focus owner:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 189
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getting AUDIOFOCUS_LOSS due to app suspension"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "MediaFocusControl"

    .line 192
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 194
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 196
    .end local v3    # "focusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_72
    goto :goto_e

    .line 197
    :cond_73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 199
    .local v4, "clientToRemove":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 200
    .end local v4    # "clientToRemove":Ljava/lang/String;
    goto :goto_77

    .line 201
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    .end local v2    # "clientsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_89
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .registers 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 894
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_6

    .line 895
    const/4 v0, 0x0

    return v0

    .line 897
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 898
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v0, :cond_17

    .line 899
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 903
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 907
    goto :goto_3c

    .line 904
    :catch_1d
    move-exception v1

    .line 905
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 906
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 905
    const-string v3, "MediaFocusControl"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3c
    const/4 v1, 0x1

    return v1
.end method

.method notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .registers 20
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p3, "cb"    # Landroid/os/IBinder;

    .line 834
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    iget-object v1, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_9
    iget-wide v2, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, v7, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    invoke-virtual {v8, v2, v3}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 836
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_8c

    .line 837
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/audio/FocusRequester;

    .line 838
    .local v10, "existingFr":Lcom/android/server/audio/FocusRequester;
    const/4 v0, 0x0

    .line 839
    .local v0, "keepTrack":Z
    if-eqz v10, :cond_34

    .line 840
    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 841
    invoke-virtual {v10}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 842
    const/4 v0, 0x1

    move v12, v0

    goto :goto_38

    .line 840
    :cond_32
    move v12, v0

    goto :goto_38

    .line 845
    :cond_34
    move-object/from16 v11, p2

    const/4 v0, 0x1

    move v12, v0

    .line 847
    .end local v0    # "keepTrack":Z
    .local v12, "keepTrack":Z
    :goto_38
    const/4 v13, 0x0

    if-eqz v12, :cond_64

    .line 848
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v0, v7, v9}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    move-object v14, v0

    .line 850
    .local v14, "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_start_41
    invoke-interface {v9, v14, v13}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_5f

    .line 854
    nop

    .line 856
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Lcom/android/server/audio/FocusRequester;

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move-object v13, v6

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 851
    :catch_5f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 862
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v14    # "hdlr":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :cond_64
    :goto_64
    :try_start_64
    iget-object v0, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v8, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6a} :catch_6b

    .line 863
    return v1

    .line 864
    :catch_6b
    move-exception v0

    .line 865
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 866
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 865
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 836
    .end local v10    # "existingFr":Lcom/android/server/audio/FocusRequester;
    .end local v12    # "keepTrack":Z
    :catchall_8c
    move-exception v0

    move-object/from16 v11, p2

    :goto_8f
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_91

    throw v0

    :catchall_91
    move-exception v0

    goto :goto_8f
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 4
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 766
    move-object v0, p1

    .line 767
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 785
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 786
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .registers 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 792
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 795
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 799
    goto :goto_33

    .line 796
    :catch_16
    move-exception v2

    .line 797
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 798
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 797
    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_33
    goto :goto_6

    .line 801
    :cond_34
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .registers 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .line 807
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 810
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 814
    goto :goto_33

    .line 811
    :catch_16
    move-exception v2

    .line 812
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 813
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_33
    goto :goto_6

    .line 816
    :cond_34
    return-void
.end method

.method postDelayedLossAfterFade(Lcom/android/server/audio/FocusRequester;J)V
    .registers 8
    .param p1, "focusLoser"    # Lcom/android/server/audio/FocusRequester;
    .param p2, "delayMs"    # J

    .line 1370
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    .line 1371
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1370
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1373
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 705
    if-nez p1, :cond_3

    .line 706
    return-void

    .line 708
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 710
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 711
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 712
    goto :goto_2d

    .line 714
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2c
    goto :goto_c

    .line 715
    :cond_2d
    :goto_2d
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)I
    .registers 35
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "sdk"    # I
    .param p10, "forceDuck"    # Z
    .param p11, "testUid"    # I

    .line 1039
    move-object/from16 v13, p0

    move/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v12, p5

    move-object/from16 v11, p6

    move/from16 v10, p8

    move/from16 v9, p10

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.focus"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 1041
    invoke-virtual {v0, v1, v11}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 1042
    invoke-virtual {v0, v1, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "requestAudioFocus"

    .line 1043
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 1044
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FOCUS_CHANGE_HINT:Landroid/media/MediaMetrics$Key;

    .line 1046
    invoke-static/range {p2 .. p2}, Landroid/media/AudioManager;->audioFocusToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1053
    const/16 v0, 0x8

    if-ne v10, v0, :cond_50

    .line 1054
    move/from16 v1, p11

    goto :goto_54

    :cond_50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :goto_54
    move v8, v1

    .line 1057
    .local v8, "uid":I
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v1

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1057
    const/4 v7, 0x1

    invoke-interface {v1, v8, v2, v12, v7}, Lcom/android/server/am/SmartPowerServiceStub;->recordAudioFocus(IILjava/lang/String;Z)V

    .line 1060
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1063
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingPack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1066
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sdk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v6, p9

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaFocusControl"

    .line 1068
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1060
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1070
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_f6

    .line 1071
    const-string v0, "MediaFocusControl"

    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return v5

    .line 1075
    :cond_f6
    if-eq v10, v0, :cond_10e

    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x20

    .line 1077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v0, 0x0

    move-object/from16 v4, p6

    move v7, v5

    move-object/from16 v5, p7

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10f

    .line 1079
    return v7

    .line 1075
    :cond_10e
    move v7, v5

    .line 1082
    :cond_10f
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v17

    .line 1083
    :try_start_112
    iget-object v0, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0
    :try_end_118
    .catchall {:try_start_112 .. :try_end_118} :catchall_30f

    const/16 v6, 0x64

    if-le v0, v6, :cond_12b

    .line 1084
    :try_start_11c
    const-string v0, "MediaFocusControl"

    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    monitor-exit v17
    :try_end_124
    .catchall {:try_start_11c .. :try_end_124} :catchall_125

    return v7

    .line 1229
    :catchall_125
    move-exception v0

    move/from16 v19, v8

    move-object v3, v15

    goto/16 :goto_313

    .line 1088
    :cond_12b
    :try_start_12b
    iget-boolean v0, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    if-nez v0, :cond_131

    const/4 v5, 0x1

    goto :goto_132

    :cond_131
    move v5, v7

    :goto_132
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1089
    invoke-virtual {v0, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0
    :try_end_138
    .catchall {:try_start_12b .. :try_end_138} :catchall_30f

    if-nez v0, :cond_13c

    const/4 v0, 0x1

    goto :goto_13d

    :cond_13c
    move v0, v7

    :goto_13d
    and-int v18, v5, v0

    .line 1090
    .local v18, "enteringRingOrCall":Z
    if-eqz v18, :cond_145

    const/4 v0, 0x1

    :try_start_142
    iput-boolean v0, v13, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z
    :try_end_144
    .catchall {:try_start_142 .. :try_end_144} :catchall_125

    goto :goto_146

    :cond_145
    const/4 v0, 0x1

    .line 1093
    :goto_146
    :try_start_146
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_16b

    .line 1095
    new-instance v16, Landroid/media/AudioFocusInfo;
    :try_end_14c
    .catchall {:try_start_146 .. :try_end_14c} :catchall_30f

    const/16 v19, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move v3, v8

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v20, v6

    move/from16 v6, p2

    move v11, v7

    move/from16 v7, v19

    move/from16 v19, v8

    .end local v8    # "uid":I
    .local v19, "uid":I
    move/from16 v8, p8

    move/from16 v9, p9

    :try_start_164
    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    move-object/from16 v1, v16

    move-object v9, v1

    .local v1, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    goto :goto_172

    .line 1099
    .end local v1    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v19    # "uid":I
    .restart local v8    # "uid":I
    :cond_16b
    move/from16 v20, v6

    move v11, v7

    move/from16 v19, v8

    .end local v8    # "uid":I
    .restart local v19    # "uid":I
    const/4 v1, 0x0

    move-object v9, v1

    .line 1103
    .local v9, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :goto_172
    const/4 v1, 0x0

    .line 1104
    .local v1, "focusGrantDelayed":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v2

    if-nez v2, :cond_183

    .line 1105
    and-int/lit8 v2, v10, 0x1

    if-nez v2, :cond_17f

    .line 1106
    monitor-exit v17

    return v11

    .line 1111
    :cond_17f
    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_185

    .line 1104
    :cond_183
    move/from16 v16, v1

    .line 1116
    .end local v1    # "focusGrantDelayed":Z
    .local v16, "focusGrantDelayed":Z
    :goto_185
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_195

    .line 1117
    move-object/from16 v8, p4

    invoke-virtual {v13, v9, v8, v15}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 1120
    monitor-exit v17

    return v20

    .line 1123
    :cond_193
    monitor-exit v17

    return v11

    .line 1130
    :cond_195
    move-object/from16 v8, p4

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v1, v13, v15}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_19c
    .catchall {:try_start_164 .. :try_end_19c} :catchall_30c

    move-object v7, v1

    .line 1133
    .local v7, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_start_19d
    invoke-interface {v15, v7, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a0
    .catch Landroid/os/RemoteException; {:try_start_19d .. :try_end_1a0} :catch_2df
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_2d9

    .line 1138
    nop

    .line 1141
    :try_start_1a1
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_2d9

    if-nez v1, :cond_1ba

    .line 1142
    :try_start_1a9
    invoke-static {}, Lcom/android/server/audio/MediaFocusControlStub;->getInstance()Lcom/android/server/audio/MediaFocusControlStub;

    move-result-object v1

    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    iget-object v3, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControlStub;->handleDelayedMessageWithdraw(Lcom/android/server/audio/FocusRequester;Landroid/os/Handler;)V
    :try_end_1ba
    .catchall {:try_start_1a9 .. :try_end_1ba} :catchall_30c

    .line 1146
    :cond_1ba
    :try_start_1ba
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_1c0
    .catchall {:try_start_1ba .. :try_end_1c0} :catchall_2d9

    if-nez v1, :cond_21d

    :try_start_1c2
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v12}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21d

    .line 1149
    iget-object v1, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1150
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    if-ne v2, v14, :cond_20a

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v2

    if-ne v2, v10, :cond_20a

    .line 1152
    invoke-static {}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->get()Lcom/android/server/audio/PlaybackActivityMonitorStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/audio/PlaybackActivityMonitorStub;->isForceIgnoreGranted()Z

    move-result v2

    if-nez v2, :cond_1fc

    .line 1153
    const-string v2, "MediaFocusControl"

    const-string/jumbo v3, "remove other app\'s audiofocus when MultipleMediaSound is closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f6
    .catchall {:try_start_1c2 .. :try_end_1f6} :catchall_217

    .line 1154
    move/from16 v6, p10

    :try_start_1f8
    invoke-direct {v13, v14, v1, v6, v12}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf_mi(ILcom/android/server/audio/FocusRequester;ZLjava/lang/String;)V

    goto :goto_1fe

    .line 1152
    :cond_1fc
    move/from16 v6, p10

    .line 1159
    :goto_1fe
    invoke-interface {v15, v7, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1160
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1162
    monitor-exit v17

    return v0

    .line 1150
    :cond_20a
    move/from16 v6, p10

    .line 1166
    if-nez v16, :cond_21f

    .line 1167
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1169
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_216
    .catchall {:try_start_1f8 .. :try_end_216} :catchall_30c

    goto :goto_21f

    .line 1229
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .end local v16    # "focusGrantDelayed":Z
    .end local v18    # "enteringRingOrCall":Z
    :catchall_217
    move-exception v0

    move/from16 v6, p10

    move-object v3, v15

    goto/16 :goto_313

    .line 1146
    .restart local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v16    # "focusGrantDelayed":Z
    .restart local v18    # "enteringRingOrCall":Z
    :cond_21d
    move/from16 v6, p10

    .line 1174
    :cond_21f
    :goto_21f
    :try_start_21f
    invoke-direct {v13, v12, v11, v11}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1176
    new-instance v20, Lcom/android/server/audio/FocusRequester;
    :try_end_224
    .catchall {:try_start_21f .. :try_end_224} :catchall_2d6

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p4

    move v11, v6

    move-object/from16 v6, p3

    move-object/from16 v21, v7

    .end local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .local v21, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    move-object/from16 v7, p5

    move-object/from16 v8, v21

    move-object/from16 v22, v9

    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .local v22, "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move-object/from16 v9, p6

    move/from16 v10, v19

    move v15, v11

    move-object/from16 v11, p0

    move/from16 v12, p9

    :try_start_242
    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    move-object/from16 v1, v20

    .line 1179
    .local v1, "nfr":Lcom/android/server/audio/FocusRequester;
    iget-boolean v2, v13, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v2, :cond_2aa

    if-ne v14, v0, :cond_2aa

    .line 1181
    if-eqz v18, :cond_26f

    .line 1182
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2aa

    .line 1183
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 1184
    .local v3, "multifr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3, v14, v1, v15}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1185
    nop

    .end local v3    # "multifr":Lcom/android/server/audio/FocusRequester;
    goto :goto_25d

    :cond_26e
    goto :goto_2aa

    .line 1188
    :cond_26f
    const/4 v2, 0x1

    .line 1189
    .local v2, "needAdd":Z
    iget-object v3, v13, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_297

    .line 1190
    iget-object v3, v13, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_297

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 1191
    .local v4, "multifr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-ne v5, v6, :cond_296

    .line 1192
    const/4 v2, 0x0

    .line 1193
    goto :goto_297

    .line 1195
    .end local v4    # "multifr":Lcom/android/server/audio/FocusRequester;
    :cond_296
    goto :goto_27e

    .line 1197
    :cond_297
    :goto_297
    if-eqz v2, :cond_29e

    .line 1198
    iget-object v3, v13, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_29e
    invoke-virtual {v1, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1201
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    invoke-virtual {v13, v3, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1203
    monitor-exit v17

    return v0

    .line 1207
    .end local v2    # "needAdd":Z
    :cond_2aa
    :goto_2aa
    if-eqz v16, :cond_2bb

    .line 1210
    invoke-direct {v13, v1}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I

    move-result v0

    .line 1211
    .local v0, "requestResult":I
    if-eqz v0, :cond_2b9

    .line 1212
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1214
    :cond_2b9
    monitor-exit v17

    return v0

    .line 1217
    .end local v0    # "requestResult":I
    :cond_2bb
    invoke-direct {v13, v14, v1, v15}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 1220
    iget-object v2, v13, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-virtual {v1, v0}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1223
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v13, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1226
    and-int/lit8 v2, v18, 0x1

    if-eqz v2, :cond_2d4

    .line 1227
    invoke-direct {v13, v0}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1229
    .end local v1    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v16    # "focusGrantDelayed":Z
    .end local v18    # "enteringRingOrCall":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v22    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :cond_2d4
    monitor-exit v17

    .line 1231
    return v0

    .line 1229
    :catchall_2d6
    move-exception v0

    move v15, v6

    goto :goto_2dc

    :catchall_2d9
    move-exception v0

    move/from16 v15, p10

    :goto_2dc
    move-object/from16 v3, p3

    goto :goto_313

    .line 1134
    .restart local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v16    # "focusGrantDelayed":Z
    .restart local v18    # "enteringRingOrCall":Z
    :catch_2df
    move-exception v0

    move/from16 v15, p10

    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-object v1, v0

    .end local v7    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v9    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    .restart local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v22    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    move-object v0, v1

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_2f5
    .catchall {:try_start_242 .. :try_end_2f5} :catchall_30a

    move-object/from16 v3, p3

    :try_start_2f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " binder death"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    monitor-exit v17

    return v11

    .line 1229
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "focusGrantDelayed":Z
    .end local v18    # "enteringRingOrCall":Z
    .end local v21    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v22    # "afiForExtPolicy":Landroid/media/AudioFocusInfo;
    :catchall_30a
    move-exception v0

    goto :goto_2dc

    :catchall_30c
    move-exception v0

    move-object v3, v15

    goto :goto_313

    .end local v19    # "uid":I
    .restart local v8    # "uid":I
    :catchall_30f
    move-exception v0

    move/from16 v19, v8

    move-object v3, v15

    .end local v8    # "uid":I
    .restart local v19    # "uid":I
    :goto_313
    monitor-exit v17
    :try_end_314
    .catchall {:try_start_2f7 .. :try_end_314} :catchall_315

    throw v0

    :catchall_315
    move-exception v0

    goto :goto_313
.end method

.method public restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 5
    .param p1, "winner"    # Lcom/android/server/audio/FocusRequester;

    .line 136
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 140
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    .line 139
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method sendFocusLoss(Landroid/media/AudioFocusInfo;)Z
    .registers 9
    .param p1, "focusLoser"    # Landroid/media/AudioFocusInfo;

    .line 253
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "loserToRemove":Lcom/android/server/audio/FocusRequester;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 256
    .local v3, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 257
    const/4 v2, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 259
    move-object v1, v3

    .line 260
    goto :goto_2d

    .line 262
    .end local v3    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_2c
    goto :goto_a

    .line 263
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_3a

    .line 264
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 266
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 268
    .end local v1    # "loserToRemove":Lcom/android/server/audio/FocusRequester;
    :cond_3a
    monitor-exit v0

    .line 269
    return v4

    .line 268
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .registers 3
    .param p1, "available"    # Z

    .line 676
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 677
    return-void
.end method

.method setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .registers 5
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "isTestFocusPolicy"    # Z

    .line 735
    if-nez p1, :cond_3

    .line 736
    return-void

    .line 738
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    if-eqz p2, :cond_c

    .line 740
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 742
    :cond_c
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 743
    monitor-exit v0

    .line 744
    return-void

    .line 743
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1
.end method

.method setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .registers 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 872
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 873
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 874
    monitor-exit v0

    return-void

    .line 876
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 878
    if-nez p2, :cond_1f

    .line 879
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    goto :goto_2b

    .line 881
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1f
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 883
    .restart local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :goto_2b
    if-eqz v0, :cond_30

    .line 884
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusResultFromExtPolicy(I)V

    .line 886
    :cond_30
    return-void

    .line 876
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public unmutePlayersForCall()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    .line 152
    return-void
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 5
    .param p1, "clientId"    # Ljava/lang/String;

    .line 1293
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1295
    monitor-exit v0

    .line 1296
    return-void

    .line 1295
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .registers 5
    .param p1, "policy"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "isTestFocusPolicy"    # Z

    .line 747
    if-nez p1, :cond_3

    .line 748
    return-void

    .line 750
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v1, p1, :cond_14

    .line 752
    if-eqz p2, :cond_11

    .line 754
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    goto :goto_14

    .line 756
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 759
    :cond_14
    :goto_14
    monitor-exit v0

    .line 760
    return-void

    .line 759
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public updateMultiAudioFocus(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMultiAudioFocus( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 1324
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1325
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 1326
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 1325
    const-string/jumbo v2, "multi_audio_focus_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1327
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v1, :cond_48

    .line 1328
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1329
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, v4, v3, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 1331
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_48
    if-nez p1, :cond_6d

    .line 1332
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 1333
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 1334
    .local v5, "multifr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v5, v4, v3, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 1335
    .end local v5    # "multifr":Lcom/android/server/audio/FocusRequester;
    goto :goto_58

    .line 1336
    :cond_68
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1339
    :cond_6d
    return-void
.end method
