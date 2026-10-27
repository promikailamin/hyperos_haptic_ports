.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# static fields
.field public static final whitelist ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

.field private static final blacklist AID_PATTERN:Ljava/util/regex/Pattern;

.field public static final whitelist CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final whitelist EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final whitelist EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final whitelist SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final whitelist SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final whitelist SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "CardEmulation"

.field static greylist-max-o sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sIsInitialized:Z

.field static greylist-max-o sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-string v0, "[0-9A-Fa-f]{10,32}\\*?\\#?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->AID_PATTERN:Ljava/util/regex/Pattern;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcCardEmulation;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 144
    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 145
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .registers 7
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    const-class v0, Landroid/nfc/cardemulation/CardEmulation;

    monitor-enter v0

    .line 154
    if-eqz p0, :cond_85

    .line 155
    :try_start_5
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_76

    .line 160
    sget-boolean v2, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    if-nez v2, :cond_4b

    .line 161
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_83

    .line 162
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_3e

    .line 167
    :try_start_15
    const-string v3, "android.hardware.nfc.hce"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_30
    .catchall {:try_start_15 .. :try_end_1c} :catchall_83

    if-eqz v3, :cond_23

    .line 174
    nop

    .line 175
    const/4 v3, 0x1

    :try_start_20
    sput-boolean v3, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_83

    goto :goto_4b

    .line 168
    :cond_23
    :try_start_23
    const-string v3, "CardEmulation"

    const-string v4, "This device does not support card emulation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    throw v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_30} :catch_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_83

    .line 171
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_30
    move-exception v3

    .line 172
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_31
    const-string v4, "CardEmulation"

    const-string v5, "PackageManager query failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 163
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3e
    const-string v3, "CardEmulation"

    const-string v4, "Cannot get PackageManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 177
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4b
    :goto_4b
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    .line 178
    .local v2, "manager":Landroid/nfc/cardemulation/CardEmulation;
    if-nez v2, :cond_74

    .line 180
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v3

    .line 181
    .local v3, "service":Landroid/nfc/INfcCardEmulation;
    if-eqz v3, :cond_67

    .line 185
    new-instance v4, Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {v4, v1, v3}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    move-object v2, v4

    .line 186
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 182
    :cond_67
    const-string v4, "CardEmulation"

    const-string v5, "This device does not implement the INfcCardEmulation interface."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
    :try_end_74
    .catchall {:try_start_31 .. :try_end_74} :catchall_83

    .line 188
    .end local v3    # "service":Landroid/nfc/INfcCardEmulation;
    :cond_74
    :goto_74
    monitor-exit v0

    return-object v2

    .line 157
    .end local v2    # "manager":Landroid/nfc/cardemulation/CardEmulation;
    :cond_76
    :try_start_76
    const-string v2, "CardEmulation"

    const-string v3, "NfcAdapter context is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 153
    .end local v1    # "context":Landroid/content/Context;
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :catchall_83
    move-exception p0

    goto :goto_8d

    .line 154
    .restart local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_85
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "NfcAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_83

    .line 153
    .end local p0    # "adapter":Landroid/nfc/NfcAdapter;
    :goto_8d
    monitor-exit v0

    throw p0
.end method

.method public static greylist-max-o isValidAid(Ljava/lang/String;)Z
    .registers 8
    .param p0, "aid"    # Ljava/lang/String;

    .line 913
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 914
    return v0

    .line 917
    :cond_4
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "#"

    const-string v4, " is not a valid AID."

    const-string v5, "AID "

    const-string v6, "CardEmulation"

    if-nez v2, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3b

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return v0

    .line 923
    :cond_3b
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_68

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return v0

    .line 929
    :cond_68
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->AID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return v0

    .line 934
    :cond_8d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .registers 7
    .param p1, "category"    # Ljava/lang/String;

    .line 273
    const-string v0, "payment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "preferForeground":Z
    :try_start_a
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_payment_foreground"

    .line 277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 276
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_1a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_1a} :catch_20

    if-eqz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    move v0, v1

    .line 279
    goto :goto_21

    .line 278
    :catch_20
    move-exception v1

    .line 280
    :goto_21
    return v0

    .line 283
    .end local v0    # "preferForeground":Z
    :cond_22
    return v1
.end method

.method public whitelist getAidsForPreferredPaymentService()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 687
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 688
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    :cond_13
    return-object v0

    .line 689
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_14
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 691
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-eqz v2, :cond_3a

    .line 696
    :try_start_20
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 697
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 698
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_31

    :cond_30
    return-object v0

    .line 699
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_31
    move-exception v0

    .line 700
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 692
    .end local v0    # "ee":Landroid/os/RemoteException;
    :cond_3a
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v1

    .line 508
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    :cond_13
    return-object v0

    .line 509
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_14
    move-exception v1

    .line 510
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 511
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-nez v2, :cond_24

    .line 512
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-object v0

    .line 516
    :cond_24
    :try_start_24
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v2

    .line 518
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;

    move-result-object v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_34} :catch_35

    :cond_34
    return-object v0

    .line 519
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :catch_35
    move-exception v2

    .line 520
    .local v2, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-object v0
.end method

.method public whitelist getDescriptionForPreferredPaymentService()Ljava/lang/CharSequence;
    .registers 7

    .line 769
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 770
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    :cond_13
    return-object v0

    .line 771
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_14
    move-exception v1

    .line 772
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 773
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-eqz v2, :cond_3a

    .line 778
    :try_start_20
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 779
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 780
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_31

    :cond_30
    return-object v0

    .line 781
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_31
    move-exception v0

    .line 782
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 774
    .end local v0    # "ee":Landroid/os/RemoteException;
    :cond_3a
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getRouteDestinationForPreferredPaymentService()Ljava/lang/String;
    .registers 8

    .line 726
    const-string v0, "Host"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v3, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v2

    .line 727
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v2, :cond_26

    .line 728
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v3

    if-nez v3, :cond_25

    .line 729
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    .line 730
    const-string v0, "OffHost"

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_24} :catch_27

    .line 729
    :goto_24
    return-object v0

    .line 732
    :cond_25
    return-object v0

    .line 734
    :cond_26
    return-object v1

    .line 735
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_27
    move-exception v2

    .line 736
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 737
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v4, "Failed to recover CardEmulationService."

    const-string v5, "CardEmulation"

    if-eqz v3, :cond_5e

    .line 742
    :try_start_33
    iget-object v6, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    .line 743
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v3, v6}, Landroid/nfc/INfcCardEmulation;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 744
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v3, :cond_54

    .line 745
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v1

    if-nez v1, :cond_53

    .line 746
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 747
    const-string v0, "Offhost"

    goto :goto_52

    :cond_4e
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v0
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_52} :catch_55

    .line 746
    :goto_52
    return-object v0

    .line 749
    :cond_53
    return-object v0

    .line 751
    :cond_54
    return-object v1

    .line 753
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_55
    move-exception v0

    .line 754
    .local v0, "ee":Landroid/os/RemoteException;
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 738
    .end local v0    # "ee":Landroid/os/RemoteException;
    :cond_5e
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getSelectionModeForCategory(Ljava/lang/String;)I
    .registers 8
    .param p1, "category"    # Ljava/lang/String;

    .line 300
    const-string v0, "payment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, "paymentRegistered":Z
    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->isDefaultPaymentRegistered()Z

    move-result v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12

    move v0, v2

    .line 316
    goto :goto_28

    .line 304
    :catch_12
    move-exception v2

    .line 305
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 306
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v4, "CardEmulation"

    if-nez v3, :cond_22

    .line 307
    const-string v3, "Failed to recover CardEmulationService."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v1

    .line 311
    :cond_22
    :try_start_22
    invoke-interface {v3}, Landroid/nfc/INfcCardEmulation;->isDefaultPaymentRegistered()Z

    move-result v3
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_2d

    move v0, v3

    .line 315
    nop

    .line 317
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_28
    if-eqz v0, :cond_2c

    .line 318
    const/4 v1, 0x0

    return v1

    .line 320
    :cond_2c
    return v1

    .line 312
    .restart local v2    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v3

    .line 313
    .local v3, "ee":Landroid/os/RemoteException;
    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v1

    .line 323
    .end local v0    # "paymentRegistered":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "ee":Landroid/os/RemoteException;
    :cond_34
    const/4 v0, 0x2

    return v0
.end method

.method public greylist-max-o getServices(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 860
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 861
    :catch_d
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 864
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_1e

    .line 865
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-object v2

    .line 869
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return-object v1

    .line 870
    :catch_29
    move-exception v1

    .line 871
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-object v2
.end method

.method public blacklist getServices(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 882
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 883
    :catch_7
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 886
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_18

    .line 887
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-object v2

    .line 891
    :cond_18
    :try_start_18
    invoke-interface {v1, p2, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return-object v1

    .line 892
    :catch_1d
    move-exception v1

    .line 893
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-object v2
.end method

.method public whitelist isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "aid"    # Ljava/lang/String;

    .line 243
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 244
    :catch_d
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 247
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_1e

    .line 248
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v2

    .line 252
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return v1

    .line 253
    :catch_29
    move-exception v1

    .line 254
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v2
.end method

.method public whitelist isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 9
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 212
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 213
    :catch_d
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 216
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "Failed to recover CardEmulationService."

    const-string v4, "CardEmulation"

    if-nez v1, :cond_1e

    .line 217
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v2

    .line 221
    :cond_1e
    :try_start_1e
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v1, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return v1

    .line 223
    :catch_29
    move-exception v1

    .line 224
    .local v1, "ee":Landroid/os/RemoteException;
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return v2
.end method

.method greylist-max-o recoverService()V
    .registers 3

    .line 938
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 939
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_e

    .line 940
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 942
    :cond_e
    return-void
.end method

.method public whitelist registerAidsForService(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 349
    .local p3, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p3, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 351
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :try_start_5
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return v1

    .line 352
    :catch_12
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 355
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v3, 0x0

    const-string v4, "CardEmulation"

    if-nez v2, :cond_23

    .line 356
    const-string v2, "Failed to recover CardEmulationService."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v3

    .line 360
    :cond_23
    :try_start_23
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v2, v5, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v2
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_2e

    return v2

    .line 362
    :catch_2e
    move-exception v2

    .line 363
    .local v2, "ee":Landroid/os/RemoteException;
    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return v3
.end method

.method public whitelist removeAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 543
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 544
    :catch_d
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 547
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_1e

    .line 548
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v2

    .line 552
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return v1

    .line 553
    :catch_29
    move-exception v1

    .line 554
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return v2
.end method

.method public blacklist setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 838
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 839
    :catch_7
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 842
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_18

    .line 843
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return v2

    .line 847
    :cond_18
    :try_start_18
    invoke-interface {v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 848
    :catch_1d
    move-exception v1

    .line 849
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v2
.end method

.method public greylist-max-o setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 816
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 817
    :catch_d
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 820
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_1e

    .line 821
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return v2

    .line 825
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return v1

    .line 826
    :catch_29
    move-exception v1

    .line 827
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return v2
.end method

.method public greylist-max-o setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "category"    # Ljava/lang/String;

    .line 793
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 794
    :catch_d
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 797
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_1e

    .line 798
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return v2

    .line 802
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v4, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_29

    return v1

    .line 804
    :catch_29
    move-exception v1

    .line 805
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return v2
.end method

.method public whitelist setOffHostForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 11
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "offHostSecureElement"    # Ljava/lang/String;

    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, "validSecureElement":Z
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 450
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x0

    if-eqz v1, :cond_7b

    if-nez p2, :cond_d

    goto :goto_7b

    .line 454
    :cond_d
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getSupportedOffHostSecureElements()Ljava/util/List;

    move-result-object v3

    .line 455
    .local v3, "validSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "eSE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 456
    :cond_1f
    const-string v5, "SIM"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 457
    :cond_2d
    return v2

    .line 460
    :cond_2e
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 461
    return v2

    .line 464
    :cond_3b
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 465
    const-string p2, "eSE1"

    goto :goto_4c

    .line 466
    :cond_44
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 467
    const-string p2, "SIM1"

    .line 471
    :cond_4c
    :goto_4c
    :try_start_4c
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_58} :catch_59

    return v2

    .line 473
    :catch_59
    move-exception v4

    .line 475
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 476
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v6, "CardEmulation"

    if-nez v5, :cond_69

    .line 477
    const-string v5, "Failed to recover CardEmulationService."

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v2

    .line 481
    :cond_69
    :try_start_69
    iget-object v7, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-interface {v5, v7, p1, p2}, Landroid/nfc/INfcCardEmulation;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_73} :catch_74

    return v2

    .line 483
    :catch_74
    move-exception v5

    .line 484
    .local v5, "ee":Landroid/os/RemoteException;
    const-string v7, "Failed to reach CardEmulationService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return v2

    .line 451
    .end local v3    # "validSE":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "ee":Landroid/os/RemoteException;
    :cond_7b
    :goto_7b
    return v2
.end method

.method public whitelist setPreferredService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 591
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    .line 594
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 598
    :try_start_a
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 599
    :catch_11
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 602
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_22

    .line 603
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return v2

    .line 607
    :cond_22
    :try_start_22
    invoke-interface {v1, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_27

    return v1

    .line 608
    :catch_27
    move-exception v1

    .line 609
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v2

    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity or service or category is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist supportsAidPrefixRegistration()Z
    .registers 6

    .line 662
    :try_start_0
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 663
    :catch_7
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 665
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_18

    .line 666
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return v2

    .line 670
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 671
    :catch_1d
    move-exception v1

    .line 672
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    return v2
.end method

.method public whitelist unsetOffHostForService(Landroid/content/ComponentName;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 388
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 389
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 390
    return v1

    .line 394
    :cond_a
    :try_start_a
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v3, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    return v1

    .line 395
    :catch_17
    move-exception v2

    .line 397
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 398
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const-string v4, "CardEmulation"

    if-nez v3, :cond_27

    .line 399
    const-string v3, "Failed to recover CardEmulationService."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v1

    .line 403
    :cond_27
    :try_start_27
    iget-object v5, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v5, p1}, Landroid/nfc/INfcCardEmulation;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_31} :catch_32

    return v1

    .line 404
    :catch_32
    move-exception v3

    .line 405
    .local v3, "ee":Landroid/os/RemoteException;
    const-string v5, "Failed to reach CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v1
.end method

.method public whitelist unsetPreferredService(Landroid/app/Activity;)Z
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 626
    if-eqz p1, :cond_34

    .line 629
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 633
    :try_start_8
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v0}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    return v0

    .line 634
    :catch_f
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    .line 637
    sget-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    const/4 v2, 0x0

    const-string v3, "CardEmulation"

    if-nez v1, :cond_20

    .line 638
    const-string v1, "Failed to recover CardEmulationService."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v2

    .line 642
    :cond_20
    :try_start_20
    invoke-interface {v1}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z

    move-result v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_24} :catch_25

    return v1

    .line 643
    :catch_25
    move-exception v1

    .line 644
    .local v1, "ee":Landroid/os/RemoteException;
    const-string v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return v2

    .line 630
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ee":Landroid/os/RemoteException;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity must be resumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
