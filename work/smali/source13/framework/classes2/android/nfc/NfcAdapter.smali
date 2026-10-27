.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcAdapter$NfcUnlockHandler;,
        Landroid/nfc/NfcAdapter$OnTagRemovedListener;,
        Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;,
        Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;,
        Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;,
        Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;,
        Landroid/nfc/NfcAdapter$ReaderCallback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field public static final greylist-max-o ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_DONE"

.field public static final greylist-max-o ACTION_HANDOVER_TRANSFER_STARTED:Ljava/lang/String; = "android.nfc.action.HANDOVER_TRANSFER_STARTED"

.field public static final whitelist ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final whitelist ACTION_PREFERRED_PAYMENT_CHANGED:Ljava/lang/String; = "android.nfc.action.PREFERRED_PAYMENT_CHANGED"

.field public static final blacklist ACTION_REQUIRE_UNLOCK_FOR_NFC:Ljava/lang/String; = "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"

.field public static final whitelist ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final greylist-max-o ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final whitelist ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field public static final whitelist ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "android.nfc.action.TRANSACTION_DETECTED"

.field public static final whitelist EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field public static final whitelist EXTRA_AID:Ljava/lang/String; = "android.nfc.extra.AID"

.field public static final whitelist EXTRA_DATA:Ljava/lang/String; = "android.nfc.extra.DATA"

.field public static final greylist-max-o EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_STATUS"

.field public static final greylist-max-o EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "android.nfc.extra.HANDOVER_TRANSFER_URI"

.field public static final whitelist EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final whitelist EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final whitelist EXTRA_PREFERRED_PAYMENT_CHANGED_REASON:Ljava/lang/String; = "android.nfc.extra.PREFERRED_PAYMENT_CHANGED_REASON"

.field public static final whitelist EXTRA_READER_PRESENCE_CHECK_DELAY:Ljava/lang/String; = "presence"

.field public static final whitelist EXTRA_SECURE_ELEMENT_NAME:Ljava/lang/String; = "android.nfc.extra.SECURE_ELEMENT_NAME"

.field public static final whitelist EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final whitelist FLAG_NDEF_PUSH_NO_CONFIRM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_READER_NFC_A:I = 0x1

.field public static final whitelist FLAG_READER_NFC_B:I = 0x2

.field public static final whitelist FLAG_READER_NFC_BARCODE:I = 0x10

.field public static final whitelist FLAG_READER_NFC_F:I = 0x4

.field public static final whitelist FLAG_READER_NFC_V:I = 0x8

.field public static final whitelist FLAG_READER_NO_PLATFORM_SOUNDS:I = 0x100

.field public static final whitelist FLAG_READER_SKIP_NDEF_CHECK:I = 0x80

.field public static final greylist-max-o HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final greylist-max-o HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final whitelist PREFERRED_PAYMENT_CHANGED:I = 0x2

.field public static final whitelist PREFERRED_PAYMENT_LOADED:I = 0x1

.field public static final whitelist PREFERRED_PAYMENT_UPDATED:I = 0x3

.field public static final whitelist STATE_OFF:I = 0x1

.field public static final whitelist STATE_ON:I = 0x3

.field public static final whitelist STATE_TURNING_OFF:I = 0x4

.field public static final whitelist STATE_TURNING_ON:I = 0x2

.field static final greylist-max-o TAG:Ljava/lang/String; = "NFC"

.field static greylist-max-o sCardEmulationService:Landroid/nfc/INfcCardEmulation;

.field static blacklist sHasBeamFeature:Z

.field static greylist-max-o sHasNfcFeature:Z

.field static greylist-max-o sIsInitialized:Z

.field static greylist-max-o sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

.field static greylist-max-o sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

.field static greylist sService:Landroid/nfc/INfcAdapter;

.field static greylist-max-o sTagService:Landroid/nfc/INfcTag;


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

.field greylist-max-o mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mNfcActivityManager:Landroid/nfc/NfcActivityManager;

.field final greylist-max-o mNfcUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/nfc/NfcAdapter$NfcUnlockHandler;",
            "Landroid/nfc/INfcUnlockHandler;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 374
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1628
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 746
    iput-object p1, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    .line 747
    new-instance v0, Landroid/nfc/NfcActivityManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    .line 748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    .line 750
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    .line 751
    new-instance v0, Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;-><init>(Landroid/nfc/INfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    .line 752
    return-void
.end method

.method public static greylist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NFC"

    const-string v2, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 701
    if-eqz p0, :cond_28

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 705
    if-eqz p0, :cond_20

    .line 710
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 712
    return-object v1

    .line 716
    :cond_10
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 717
    .local v0, "manager":Landroid/nfc/NfcManager;
    if-nez v0, :cond_1b

    .line 719
    return-object v1

    .line 721
    :cond_1b
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1

    .line 706
    .end local v0    # "manager":Landroid/nfc/NfcManager;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized greylist getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 624
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    if-nez v1, :cond_8d

    .line 625
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v1

    sput-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    .line 626
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasBeamFeature()Z

    move-result v1

    sput-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    .line 627
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcHceFeature()Z

    move-result v1

    .line 629
    .local v1, "hasHceFeature":Z
    sget-boolean v2, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-nez v2, :cond_2b

    if-eqz v1, :cond_1e

    goto :goto_2b

    .line 630
    :cond_1e
    const-string v2, "NFC"

    const-string v3, "this device does not have NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 633
    :cond_2b
    :goto_2b
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 634
    if-eqz v2, :cond_80

    .line 638
    sget-boolean v3, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_b6

    if-eqz v3, :cond_4c

    .line 640
    :try_start_37
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3d} :catch_3e
    .catchall {:try_start_37 .. :try_end_3d} :catchall_b6

    .line 644
    goto :goto_4c

    .line 641
    :catch_3e
    move-exception v2

    .line 642
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v3, "NFC"

    const-string v4, "could not retrieve NFC Tag service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_b6

    .line 646
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4c
    :goto_4c
    if-eqz v1, :cond_7c

    .line 648
    :try_start_4e
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_56} :catch_6e
    .catchall {:try_start_4e .. :try_end_56} :catchall_b6

    .line 652
    nop

    .line 654
    :try_start_57
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5f} :catch_60
    .catchall {:try_start_57 .. :try_end_5f} :catchall_b6

    .line 658
    goto :goto_7c

    .line 655
    :catch_60
    move-exception v2

    .line 656
    .restart local v2    # "e":Landroid/os/RemoteException;
    :try_start_61
    const-string v3, "NFC"

    const-string v4, "could not retrieve card emulation service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 649
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_6e
    move-exception v2

    .line 650
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "NFC"

    const-string v4, "could not retrieve NFC-F card emulation service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 661
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_7c
    :goto_7c
    const/4 v2, 0x1

    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    goto :goto_8d

    .line 635
    :cond_80
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 663
    .end local v1    # "hasHceFeature":Z
    :cond_8d
    :goto_8d
    if-nez p0, :cond_9f

    .line 664
    sget-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_9b

    .line 665
    new-instance v1, Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 667
    :cond_9b
    sget-object v1, Landroid/nfc/NfcAdapter;->sNullContextNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_9d
    .catchall {:try_start_61 .. :try_end_9d} :catchall_b6

    monitor-exit v0

    return-object v1

    .line 669
    :cond_9f
    :try_start_9f
    sget-object v1, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcAdapter;

    .line 670
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_b4

    .line 671
    new-instance v2, Landroid/nfc/NfcAdapter;

    invoke-direct {v2, p0}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 672
    sget-object v2, Landroid/nfc/NfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_b6

    .line 674
    :cond_b4
    monitor-exit v0

    return-object v1

    .line 623
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_b6
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static greylist-max-o getServiceInterface()Landroid/nfc/INfcAdapter;
    .registers 2

    .line 680
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 681
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_a

    .line 682
    const/4 v1, 0x0

    return-object v1

    .line 684
    :cond_a
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist hasBeamFeature()Z
    .registers 5

    .line 534
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 535
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "NFC"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 536
    const-string v3, "Cannot get package manager, assuming no Android Beam feature"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return v2

    .line 540
    :cond_f
    :try_start_f
    const-string v3, "android.sofware.nfc.beam"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v1

    .line 541
    :catch_16
    move-exception v3

    .line 542
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no Android Beam feature"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    return v2
.end method

.method private static greylist-max-o hasNfcFeature()Z
    .registers 5

    .line 554
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 555
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "NFC"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 556
    const-string v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return v2

    .line 560
    :cond_f
    :try_start_f
    const-string v3, "android.hardware.nfc"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v1

    .line 561
    :catch_16
    move-exception v3

    .line 562
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    return v2
.end method

.method private static greylist-max-o hasNfcHceFeature()Z
    .registers 5

    .line 573
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 574
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const-string v1, "NFC"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 575
    const-string v3, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v2

    .line 579
    :cond_f
    :try_start_f
    const-string v3, "android.hardware.nfc.hce"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "android.hardware.nfc.hcef"

    .line 580
    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_21

    if-eqz v1, :cond_20

    :cond_1f
    const/4 v2, 0x1

    .line 579
    :cond_20
    return v2

    .line 581
    :catch_21
    move-exception v3

    .line 582
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    return v2
.end method


# virtual methods
.method public whitelist addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .param p2, "tagTechnologies"    # [Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2135
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2136
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_53

    .line 2139
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_59

    .line 2141
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2142
    return v1

    .line 2146
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_45

    .line 2147
    :try_start_10
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2149
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v2, v3}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2150
    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    :cond_2a
    new-instance v2, Landroid/nfc/NfcAdapter$3;

    invoke-direct {v2, p0, p1}, Landroid/nfc/NfcAdapter$3;-><init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V

    .line 2160
    .local v2, "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 2161
    invoke-static {p2}, Landroid/nfc/Tag;->getTechCodesFromStrings([Ljava/lang/String;)[I

    move-result-object v4

    .line 2160
    invoke-interface {v3, v2, v4}, Landroid/nfc/INfcAdapter;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    .line 2162
    iget-object v3, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    nop

    .end local v2    # "iHandler":Landroid/nfc/INfcUnlockHandler$Stub;
    monitor-exit v0

    .line 2170
    nop

    .line 2172
    const/4 v0, 0x1

    return v0

    .line 2163
    :catchall_42
    move-exception v2

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_42

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .end local p2    # "tagTechnologies":[Ljava/lang/String;
    :try_start_44
    throw v2
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_45} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_45} :catch_45

    .line 2167
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .restart local p2    # "tagTechnologies":[Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 2168
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NFC"

    const-string v3, "Unable to register LockscreenDispatch"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2169
    return v1

    .line 2164
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v0

    .line 2165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2166
    return v1

    .line 2137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_53
    :try_start_53
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .end local p2    # "tagTechnologies":[Ljava/lang/String;
    throw v1

    .line 2139
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .restart local p2    # "tagTechnologies":[Ljava/lang/String;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public greylist attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;

    .line 832
    const-string v0, "NFC"

    const-string v1, "NFC service dead - attempting to recover"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 834
    .local v1, "service":Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_13

    .line 835
    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return-void

    .line 842
    :cond_13
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 844
    :try_start_15
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_37

    .line 850
    nop

    .line 853
    :try_start_1c
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    .line 856
    goto :goto_29

    .line 854
    :catch_23
    move-exception v2

    .line 855
    .local v2, "ee":Landroid/os/RemoteException;
    const-string v3, "could not retrieve NFC card emulation service during service recovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v2    # "ee":Landroid/os/RemoteException;
    :goto_29
    :try_start_29
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    .line 862
    goto :goto_36

    .line 860
    :catch_30
    move-exception v2

    .line 861
    .restart local v2    # "ee":Landroid/os/RemoteException;
    const-string v3, "could not retrieve NFC-F card emulation service during service recovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v2    # "ee":Landroid/os/RemoteException;
    :goto_36
    return-void

    .line 845
    :catch_37
    move-exception v2

    .line 846
    .restart local v2    # "ee":Landroid/os/RemoteException;
    const-string v3, "could not retrieve NFC tag service during service recovery"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

.method public whitelist disable()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 990
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_8

    return v0

    .line 991
    :catch_8
    move-exception v1

    .line 992
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 994
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v3, 0x0

    const-string v4, "Failed to recover NFC Service."

    const-string v5, "NFC"

    if-nez v2, :cond_19

    .line 995
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v3

    .line 999
    :cond_19
    :try_start_19
    invoke-interface {v2, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_1e

    return v0

    .line 1000
    :catch_1e
    move-exception v0

    .line 1001
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    .end local v0    # "ee":Landroid/os/RemoteException;
    return v3
.end method

.method public whitelist disable(Z)Z
    .registers 7
    .param p1, "persist"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1015
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1016
    :catch_7
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1019
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_18

    .line 1020
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return v2

    .line 1024
    :cond_18
    :try_start_18
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 1025
    :catch_1d
    move-exception v1

    .line 1026
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist disableForegroundDispatch(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1618
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1619
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_16

    .line 1622
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 1623
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 1626
    return-void

    .line 1620
    :cond_16
    :try_start_16
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1622
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method greylist-max-o disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "force"    # Z

    .line 1637
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    .line 1638
    if-nez p2, :cond_17

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 1639
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must disable foreground dispatching while your activity is still resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "force":Z
    throw v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1644
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "force":Z
    :cond_17
    :goto_17
    goto :goto_1c

    .line 1642
    :catch_18
    move-exception v0

    .line 1643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1645
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public whitelist disableForegroundNdefPush(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1828
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1829
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2b

    .line 1832
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1833
    monitor-exit v0

    return-void

    .line 1835
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_31

    .line 1836
    if-eqz p1, :cond_25

    .line 1839
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1840
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1841
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1842
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1843
    return-void

    .line 1837
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1830
    :cond_2b
    :try_start_2b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1835
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public whitelist disableNdefPush()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1960
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1961
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_15

    .line 1964
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    .line 1966
    :try_start_8
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 1967
    :catch_f
    move-exception v0

    .line 1968
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1969
    const/4 v1, 0x0

    return v1

    .line 1962
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :try_start_15
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    throw v1

    .line 1964
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist disableReaderMode(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1688
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1689
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_e

    .line 1692
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_14

    .line 1693
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcActivityManager;->disableReaderMode(Landroid/app/Activity;)V

    .line 1694
    return-void

    .line 1690
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1692
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw v1
.end method

.method public greylist-max-o dispatch(Landroid/nfc/Tag;)V
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 2095
    if-eqz p1, :cond_d

    .line 2099
    :try_start_2
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->dispatch(Landroid/nfc/Tag;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 2102
    goto :goto_c

    .line 2100
    :catch_8
    move-exception v0

    .line 2101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void

    .line 2096
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enable()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 951
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 952
    :catch_7
    move-exception v0

    .line 953
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 955
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_18

    .line 956
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return v2

    .line 960
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 961
    :catch_1d
    move-exception v1

    .line 962
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "filters"    # [Landroid/content/IntentFilter;
    .param p4, "techLists"    # [[Ljava/lang/String;

    .line 1577
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1578
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_40

    .line 1581
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_46

    .line 1582
    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    .line 1585
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1590
    const/4 v0, 0x0

    .line 1591
    .local v0, "parcel":Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_1e

    :try_start_15
    array-length v1, p4

    if-lez v1, :cond_1e

    .line 1592
    new-instance v1, Landroid/nfc/TechListParcel;

    invoke-direct {v1, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    move-object v0, v1

    .line 1594
    :cond_1e
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 1596
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p2, p3, v0}, Landroid/nfc/INfcAdapter;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2c} :catch_2d

    .line 1599
    .end local v0    # "parcel":Landroid/nfc/TechListParcel;
    goto :goto_31

    .line 1597
    :catch_2d
    move-exception v0

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1600
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void

    .line 1586
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Foreground dispatch can only be enabled when your activity is resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1579
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "intent":Landroid/app/PendingIntent;
    .end local p3    # "filters":[Landroid/content/IntentFilter;
    .end local p4    # "techLists":[[Ljava/lang/String;
    throw v1

    .line 1581
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "intent":Landroid/app/PendingIntent;
    .restart local p3    # "filters":[Landroid/content/IntentFilter;
    .restart local p4    # "techLists":[[Ljava/lang/String;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public whitelist enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1791
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1792
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_22

    .line 1795
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1796
    monitor-exit v0

    return-void

    .line 1798
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    .line 1799
    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    .line 1802
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1803
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1804
    return-void

    .line 1800
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1793
    :cond_22
    :try_start_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "message":Landroid/nfc/NdefMessage;
    throw v1

    .line 1798
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "message":Landroid/nfc/NdefMessage;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist enableNdefPush()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1941
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_11

    .line 1945
    :try_start_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->enableNdefPush()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 1946
    :catch_b
    move-exception v0

    .line 1947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1948
    const/4 v1, 0x0

    return v1

    .line 1942
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Landroid/nfc/NfcAdapter$ReaderCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 1671
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1672
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_e

    .line 1675
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_14

    .line 1676
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/nfc/NfcActivityManager;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 1677
    return-void

    .line 1673
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .end local p3    # "flags":I
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v1

    .line 1675
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "callback":Landroid/nfc/NfcAdapter$ReaderCallback;
    .restart local p3    # "flags":I
    .restart local p4    # "extras":Landroid/os/Bundle;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist enableSecureNfc(Z)Z
    .registers 7
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1854
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_26

    .line 1858
    :try_start_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setNfcSecure(Z)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 1859
    :catch_b
    move-exception v0

    .line 1860
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1862
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_1c

    .line 1863
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    return v2

    .line 1867
    :cond_1c
    :try_start_1c
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setNfcSecure(Z)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1868
    :catch_21
    move-exception v1

    .line 1869
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 1855
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o enforceResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 2231
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2234
    return-void

    .line 2232
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API cannot be called while activity is paused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getAdapterState()I
    .registers 6

    .line 914
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 915
    :catch_7
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 918
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x1

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_18

    .line 919
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return v2

    .line 923
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 924
    :catch_1d
    move-exception v1

    .line 925
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public greylist-max-o getCardEmulationService()Landroid/nfc/INfcCardEmulation;
    .registers 2

    .line 786
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 787
    sget-object v0, Landroid/nfc/NfcAdapter;->sCardEmulationService:Landroid/nfc/INfcCardEmulation;

    return-object v0
.end method

.method public greylist getContext()Landroid/content/Context;
    .registers 2

    .line 759
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist-max-r getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .registers 7

    .line 2208
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_30

    .line 2213
    :try_start_4
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 2214
    :catch_f
    move-exception v0

    .line 2215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2217
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_20

    .line 2218
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-object v2

    .line 2222
    :cond_20
    :try_start_20
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2b

    return-object v1

    .line 2223
    :catch_2b
    move-exception v1

    .line 2224
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    .end local v1    # "ee":Landroid/os/RemoteException;
    return-object v2

    .line 2209
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getNfcDtaInterface()Landroid/nfc/INfcDta;
    .registers 7

    .line 804
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_30

    .line 809
    :try_start_4
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/nfc/INfcAdapter;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    .line 810
    :catch_f
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 813
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_20

    .line 814
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-object v2

    .line 818
    :cond_20
    :try_start_20
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/nfc/INfcAdapter;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2b

    return-object v1

    .line 819
    :catch_2b
    move-exception v1

    .line 820
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v1    # "ee":Landroid/os/RemoteException;
    return-object v2

    .line 805
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You need a context on NfcAdapter to use the  NFC extras APIs"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;
    .registers 2

    .line 795
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 796
    sget-object v0, Landroid/nfc/NfcAdapter;->sNfcFCardEmulationService:Landroid/nfc/INfcFCardEmulation;

    return-object v0
.end method

.method greylist-max-o getSdkVersion()I
    .registers 2

    .line 2237
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 2238
    const/16 v0, 0x9

    return v0

    .line 2240
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public greylist getService()Landroid/nfc/INfcAdapter;
    .registers 2

    .line 768
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 769
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public blacklist getSupportedOffHostSecureElements()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v0, "offHostSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 598
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const-string v2, "NFC"

    if-nez v1, :cond_13

    .line 599
    const-string v3, "Cannot get package manager, assuming no off-host CE feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-object v0

    .line 603
    :cond_13
    :try_start_13
    const-string v3, "android.hardware.nfc.uicc"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 604
    const-string v3, "SIM"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_21
    const-string v3, "android.hardware.nfc.ese"

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 607
    const-string v3, "eSE"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2e} :catch_30

    .line 613
    :cond_2e
    nop

    .line 614
    return-object v0

    .line 609
    :catch_30
    move-exception v3

    .line 610
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Package manager query failed, assuming no off-host CE feature"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 612
    return-object v0
.end method

.method public greylist-max-o getTagService()Landroid/nfc/INfcTag;
    .registers 2

    .line 777
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 778
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public whitelist ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
    .registers 8
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "debounceMs"    # I
    .param p3, "tagRemovedListener"    # Landroid/nfc/NfcAdapter$OnTagRemovedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 2056
    const/4 v0, 0x0

    .line 2057
    .local v0, "iListener":Landroid/nfc/ITagRemovedCallback$Stub;
    if-eqz p3, :cond_9

    .line 2058
    new-instance v1, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v1, p0, p4, p3}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    move-object v0, v1

    .line 2077
    :cond_9
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2078
    :try_start_c
    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;

    .line 2079
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1d

    .line 2081
    :try_start_f
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2, p2, v0}, Landroid/nfc/INfcAdapter;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a

    return v1

    .line 2082
    :catch_1a
    move-exception v1

    .line 2083
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2

    .line 2079
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public whitelist invokeBeam(Landroid/app/Activity;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1725
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1726
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2f

    .line 1729
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1730
    monitor-exit v0

    return v2

    .line 1732
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    .line 1733
    if-eqz p1, :cond_27

    .line 1736
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enforceResumed(Landroid/app/Activity;)V

    .line 1738
    :try_start_14
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->invokeBeam()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 1739
    const/4 v0, 0x1

    return v0

    .line 1740
    :catch_1b
    move-exception v0

    .line 1741
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v3, "invokeBeam: NFC process has died."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1743
    return v2

    .line 1734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity may not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1727
    :cond_2f
    :try_start_2f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "activity":Landroid/app/Activity;
    throw v1

    .line 1732
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_35

    throw v1
.end method

.method public greylist-max-o invokeBeam(Landroid/nfc/BeamShareData;)Z
    .registers 5
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .line 1752
    const-string v0, "NFC"

    :try_start_2
    const-string v1, "invokeBeamInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    .line 1754
    const/4 v0, 0x1

    return v0

    .line 1755
    :catch_e
    move-exception v1

    .line 1756
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "invokeBeam: NFC process has died."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1758
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isControllerAlwaysOn()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2298
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOn()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2299
    :catch_7
    move-exception v0

    .line 2300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2302
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_18

    .line 2303
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    return v2

    .line 2307
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOn()Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 2308
    :catch_1d
    move-exception v1

    .line 2309
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist isControllerAlwaysOnSupported()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2325
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_26

    .line 2329
    :try_start_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 2330
    :catch_b
    move-exception v0

    .line 2331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2333
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_1c

    .line 2334
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    return v2

    .line 2338
    :cond_1c
    :try_start_1c
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 2339
    :catch_21
    move-exception v1

    .line 2340
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isEnabled()Z
    .registers 8

    .line 881
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_e

    if-ne v3, v1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    return v0

    .line 882
    :catch_e
    move-exception v3

    .line 883
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v3}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 885
    sget-object v4, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const-string v5, "Failed to recover NFC Service."

    const-string v6, "NFC"

    if-nez v4, :cond_1e

    .line 886
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return v2

    .line 890
    :cond_1e
    :try_start_1e
    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_27

    if-ne v4, v1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0

    .line 891
    :catch_27
    move-exception v0

    .line 892
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v0    # "ee":Landroid/os/RemoteException;
    return v2
.end method

.method public whitelist isNdefPushEnabled()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2002
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2003
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1b

    .line 2006
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 2007
    monitor-exit v0

    return v2

    .line 2009
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_21

    .line 2011
    :try_start_f
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v0

    .line 2012
    :catch_16
    move-exception v0

    .line 2013
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2014
    return v2

    .line 2004
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    throw v1

    .line 2009
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist isSecureNfcEnabled()Z
    .registers 6

    .line 1912
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_26

    .line 1916
    :try_start_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isNfcSecureEnabled()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 1917
    :catch_b
    move-exception v0

    .line 1918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1920
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_1c

    .line 1921
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return v2

    .line 1925
    :cond_1c
    :try_start_1c
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isNfcSecureEnabled()Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1926
    :catch_21
    move-exception v1

    .line 1927
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 1913
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isSecureNfcSupported()Z
    .registers 6

    .line 1882
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_26

    .line 1886
    :try_start_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->deviceSupportsNfcSecure()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 1887
    :catch_b
    move-exception v0

    .line 1888
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1890
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_1c

    .line 1891
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    return v2

    .line 1895
    :cond_1c
    :try_start_1c
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->deviceSupportsNfcSecure()Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 1896
    :catch_21
    move-exception v1

    .line 1897
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 1883
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o pausePolling(I)V
    .registers 3
    .param p1, "timeoutInMs"    # I

    .line 1039
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->pausePolling(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1042
    goto :goto_a

    .line 1040
    :catch_6
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1043
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist registerControllerAlwaysOnListener(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2360
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/NfcControllerAlwaysOnListener;->register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 2361
    return-void
.end method

.method public whitelist removeNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;)Z
    .registers 5
    .param p1, "unlockHandler"    # Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2184
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 2185
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_2c

    .line 2188
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_32

    .line 2190
    :try_start_8
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_26

    .line 2191
    :try_start_b
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2192
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mNfcUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    .line 2195
    :cond_20
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2196
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :try_start_25
    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_26} :catch_26

    .line 2197
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :catch_26
    move-exception v0

    .line 2198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2199
    const/4 v1, 0x0

    return v1

    .line 2186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    throw v1

    .line 2188
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "unlockHandler":Landroid/nfc/NfcAdapter$NfcUnlockHandler;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_32

    throw v1
.end method

.method public greylist-max-o resumePolling()V
    .registers 2

    .line 1053
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->resumePolling()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1056
    goto :goto_a

    .line 1054
    :catch_6
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 1057
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .registers 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1124
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1125
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_51

    .line 1128
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1129
    monitor-exit v0

    return-void

    .line 1131
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_57

    .line 1132
    if-eqz p2, :cond_49

    .line 1135
    if-eqz p1, :cond_43

    .line 1136
    array-length v0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_43

    aget-object v2, p1, v1

    .line 1137
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_3b

    .line 1139
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_33

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string v4, "content"

    .line 1141
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1136
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1142
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "scheme":Ljava/lang/String;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI needs to have either scheme file or scheme content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_43
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 1148
    return-void

    .line 1133
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_51
    :try_start_51
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "uris":[Landroid/net/Uri;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v1

    .line 1131
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "uris":[Landroid/net/Uri;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public whitelist setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V
    .registers 5
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1212
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1213
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_1e

    .line 1216
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1217
    monitor-exit v0

    return-void

    .line 1219
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    .line 1220
    if-eqz p2, :cond_16

    .line 1223
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1}, Landroid/nfc/NfcActivityManager;->setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    .line 1224
    return-void

    .line 1221
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    throw v1

    .line 1219
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist setControllerAlwaysOn(Z)Z
    .registers 7
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2266
    sget-boolean v0, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v0, :cond_26

    .line 2270
    :try_start_4
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1}, Landroid/nfc/INfcAdapter;->setControllerAlwaysOn(Z)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 2271
    :catch_b
    move-exception v0

    .line 2272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2274
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    const/4 v2, 0x0

    const-string v3, "Failed to recover NFC Service."

    const-string v4, "NFC"

    if-nez v1, :cond_1c

    .line 2275
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return v2

    .line 2279
    :cond_1c
    :try_start_1c
    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->setControllerAlwaysOn(Z)Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return v1

    .line 2280
    :catch_21
    move-exception v1

    .line 2281
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    .end local v1    # "ee":Landroid/os/RemoteException;
    return v2

    .line 2267
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V
    .registers 6
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1340
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1341
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_18

    .line 1344
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    .line 1345
    if-eqz p2, :cond_10

    .line 1348
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1349
    return-void

    .line 1346
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_18
    :try_start_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "flags":I
    throw v1

    .line 1344
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "flags":I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public varargs whitelist setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 10
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1303
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1304
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_4a

    .line 1307
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1308
    monitor-exit v0

    return-void

    .line 1310
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_50

    .line 1311
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v0

    .line 1313
    .local v0, "targetSdkVersion":I
    if-eqz p2, :cond_35

    .line 1316
    :try_start_14
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1317
    array-length v1, p3

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_32

    aget-object v4, p3, v3

    .line 1318
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2a

    .line 1321
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, v4, p1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V

    .line 1317
    .end local v4    # "a":Landroid/app/Activity;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1319
    .restart local v4    # "a":Landroid/app/Activity;
    :cond_2a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activities cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1332
    .end local v4    # "a":Landroid/app/Activity;
    .restart local v0    # "targetSdkVersion":I
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :cond_32
    goto :goto_48

    .line 1323
    :catch_33
    move-exception v1

    goto :goto_3d

    .line 1314
    :cond_35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_3d} :catch_33

    .line 1324
    .restart local v0    # "targetSdkVersion":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :goto_3d
    const/16 v2, 0x10

    if-ge v0, v2, :cond_49

    .line 1326
    const-string v2, "NFC"

    const-string v3, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_48
    return-void

    .line 1330
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_49
    throw v1

    .line 1305
    .end local v0    # "targetSdkVersion":I
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "message":Landroid/nfc/NdefMessage;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1310
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "message":Landroid/nfc/NdefMessage;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_50

    throw v1
.end method

.method public greylist setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;I)V
    .registers 6
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "flags"    # I

    .line 1460
    if-eqz p2, :cond_8

    .line 1463
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1464
    return-void

    .line 1461
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 10
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1422
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1423
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_4a

    .line 1426
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1427
    monitor-exit v0

    return-void

    .line 1429
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_50

    .line 1430
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v0

    .line 1432
    .local v0, "targetSdkVersion":I
    if-eqz p2, :cond_35

    .line 1435
    :try_start_14
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1436
    array-length v1, p3

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_32

    aget-object v4, p3, v3

    .line 1437
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2a

    .line 1440
    iget-object v5, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v5, v4, p1, v2}, Landroid/nfc/NfcActivityManager;->setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V

    .line 1436
    .end local v4    # "a":Landroid/app/Activity;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 1438
    .restart local v4    # "a":Landroid/app/Activity;
    :cond_2a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activities cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1451
    .end local v4    # "a":Landroid/app/Activity;
    .restart local v0    # "targetSdkVersion":I
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :cond_32
    goto :goto_48

    .line 1442
    :catch_33
    move-exception v1

    goto :goto_3d

    .line 1433
    :cond_35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_3d} :catch_33

    .line 1443
    .restart local v0    # "targetSdkVersion":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :goto_3d
    const/16 v2, 0x10

    if-ge v0, v2, :cond_49

    .line 1445
    const-string v2, "NFC"

    const-string v3, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1452
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_48
    return-void

    .line 1449
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_49
    throw v1

    .line 1424
    .end local v0    # "targetSdkVersion":I
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1429
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_50

    throw v1
.end method

.method public varargs whitelist setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .registers 9
    .param p1, "callback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activities"    # [Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1509
    const-class v0, Landroid/nfc/NfcAdapter;

    monitor-enter v0

    .line 1510
    :try_start_3
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasNfcFeature:Z

    if-eqz v1, :cond_49

    .line 1513
    sget-boolean v1, Landroid/nfc/NfcAdapter;->sHasBeamFeature:Z

    if-nez v1, :cond_d

    .line 1514
    monitor-exit v0

    return-void

    .line 1516
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_4f

    .line 1517
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getSdkVersion()I

    move-result v0

    .line 1519
    .local v0, "targetSdkVersion":I
    if-eqz p2, :cond_34

    .line 1522
    :try_start_14
    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v1, p2, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1523
    array-length v1, p3

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_31

    aget-object v3, p3, v2

    .line 1524
    .local v3, "a":Landroid/app/Activity;
    if-eqz v3, :cond_29

    .line 1527
    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mNfcActivityManager:Landroid/nfc/NfcActivityManager;

    invoke-virtual {v4, v3, p1}, Landroid/nfc/NfcActivityManager;->setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 1523
    .end local v3    # "a":Landroid/app/Activity;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1525
    .restart local v3    # "a":Landroid/app/Activity;
    :cond_29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activities cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1538
    .end local v3    # "a":Landroid/app/Activity;
    .restart local v0    # "targetSdkVersion":I
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :cond_31
    goto :goto_47

    .line 1529
    :catch_32
    move-exception v1

    goto :goto_3c

    .line 1520
    :cond_34
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "activity cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "targetSdkVersion":I
    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1
    :try_end_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_3c} :catch_32

    .line 1530
    .restart local v0    # "targetSdkVersion":I
    .local v1, "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :goto_3c
    const/16 v2, 0x10

    if-ge v0, v2, :cond_48

    .line 1532
    const-string v2, "NFC"

    const-string v3, "Cannot call API with Activity that has already been destroyed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_47
    return-void

    .line 1536
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_48
    throw v1

    .line 1511
    .end local v0    # "targetSdkVersion":I
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_49
    :try_start_49
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local p0    # "this":Landroid/nfc/NfcAdapter;
    .end local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local p2    # "activity":Landroid/app/Activity;
    .end local p3    # "activities":[Landroid/app/Activity;
    throw v1

    .line 1516
    .restart local p0    # "this":Landroid/nfc/NfcAdapter;
    .restart local p1    # "callback":Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .restart local p2    # "activity":Landroid/app/Activity;
    .restart local p3    # "activities":[Landroid/app/Activity;
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public greylist-max-o setP2pModes(II)V
    .registers 4
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I

    .line 2110
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcAdapter;->setP2pModes(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2113
    goto :goto_a

    .line 2111
    :catch_6
    move-exception v0

    .line 2112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 2114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist unregisterControllerAlwaysOnListener(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2378
    iget-object v0, p0, Landroid/nfc/NfcAdapter;->mControllerAlwaysOnListener:Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener;->unregister(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    .line 2379
    return-void
.end method
