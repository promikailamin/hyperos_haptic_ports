.class Lcom/android/server/companion/CompanionApplicationController;
.super Ljava/lang/Object;
.source "CompanionApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;,
        Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;,
        Lcom/android/server/companion/CompanionApplicationController$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final REBIND_TIMEOUT:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "CompanionDevice_ApplicationController"


# instance fields
.field private final mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<",
            "Ljava/util/List<",
            "Lcom/android/server/companion/CompanionDeviceServiceConnector;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

.field private final mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

.field private final mContext:Landroid/content/Context;

.field private final mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$V10cftkgzzp8L3lGUq_mQ1-BeT4(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->onPrimaryServiceBindingDied(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/CompanionApplicationController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/companion/CompanionApplicationController$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 98
    new-instance v0, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;-><init>(Lcom/android/server/companion/CompanionApplicationController;Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister-IA;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    .line 99
    new-instance v0, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 100
    new-instance v0, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 101
    return-void
.end method

.method private getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->getValueForPackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 281
    .local v1, "connectors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/companion/CompanionDeviceServiceConnector;>;"
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    .line 282
    if-eqz v1, :cond_16

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0

    .line 281
    .end local v1    # "connectors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/companion/CompanionDeviceServiceConnector;>;"
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private onPrimaryServiceBindingDied(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 266
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 269
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 270
    invoke-interface {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$Callback;->onCompanionApplicationBindingDied(ILjava/lang/String;)Z

    move-result v0

    .line 271
    .local v0, "shouldScheduleRebind":Z
    if-eqz v0, :cond_14

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->scheduleRebinding(ILjava/lang/String;)V

    .line 274
    :cond_14
    return-void

    .line 266
    .end local v0    # "shouldScheduleRebind":Z
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private onRebindingCompanionApplicationTimeout(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$Callback;->onRebindCompanionApplicationTimeout(ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method private scheduleRebinding(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method


# virtual methods
.method bindCompanionApplication(ILjava/lang/String;Z)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isSelfManaged"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->forPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "companionServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 117
    const-string v1, "CompanionDevice_ApplicationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not bind companion applications u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 126
    :cond_35
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v1

    .line 127
    :try_start_38
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 129
    monitor-exit v1

    return-void

    .line 132
    :cond_42
    new-instance v2, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionApplicationController;IZ)V

    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "serviceConnectors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/companion/CompanionDeviceServiceConnector;>;"
    iget-object v3, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_38 .. :try_end_51} :catchall_75

    .line 139
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    new-instance v3, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/CompanionApplicationController;)V

    invoke-virtual {v1, v3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V

    .line 142
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 143
    .local v3, "serviceConnector":Lcom/android/server/companion/CompanionDeviceServiceConnector;
    invoke-virtual {v3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 144
    .end local v3    # "serviceConnector":Lcom/android/server/companion/CompanionDeviceServiceConnector;
    goto :goto_64

    .line 145
    :cond_74
    return-void

    .line 136
    .end local v2    # "serviceConnectors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/companion/CompanionDeviceServiceConnector;>;"
    :catchall_75
    move-exception v2

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v2
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 239
    const-string v0, "Companion Device Application Controller: \n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 241
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 242
    :try_start_8
    const-string v1, "  Bound Companion Applications: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 243
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 244
    const-string v1, "<empty>\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_25

    .line 246
    :cond_1b
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 247
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {v1, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    .line 249
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_44

    .line 251
    const-string v0, "  Companion Applications Scheduled For Rebinding: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 252
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->size()I

    move-result v0

    if-nez v0, :cond_39

    .line 253
    const-string v0, "<empty>\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_43

    .line 255
    :cond_39
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 256
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {v0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    .line 258
    :goto_43
    return-void

    .line 249
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method isCompanionApplicationBound(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 171
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isRebindingCompanionApplicationScheduled(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 184
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v0

    .line 183
    return v0
.end method

.method synthetic lambda$bindCompanionApplication$0$com-android-server-companion-CompanionApplicationController(IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "isSelfManaged"    # Z
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 133
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->newInstance(Landroid/content/Context;ILandroid/content/ComponentName;Z)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$scheduleRebinding$1$com-android-server-companion-CompanionApplicationController(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->onRebindingCompanionApplicationTimeout(ILjava/lang/String;)V

    return-void
.end method

.method notifyCompanionApplicationDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 5
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 195
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 196
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object v2

    .line 204
    .local v2, "primaryServiceConnector":Lcom/android/server/companion/CompanionDeviceServiceConnector;
    if-nez v2, :cond_10

    .line 210
    return-void

    .line 213
    :cond_10
    invoke-virtual {v2, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V

    .line 214
    return-void
.end method

.method notifyCompanionApplicationDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 5
    .param p1, "association"    # Landroid/companion/AssociationInfo;

    .line 217
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 218
    .local v0, "userId":I
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 225
    invoke-direct {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object v2

    .line 226
    .local v2, "primaryServiceConnector":Lcom/android/server/companion/CompanionDeviceServiceConnector;
    if-nez v2, :cond_10

    .line 232
    return-void

    .line 235
    :cond_10
    invoke-virtual {v2, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    .line 236
    return-void
.end method

.method onPackagesChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 104
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->invalidate(I)V

    .line 105
    return-void
.end method

.method unbindCompanionApplication(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 153
    .local v1, "serviceConnectors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/companion/CompanionDeviceServiceConnector;>;"
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_24

    .line 154
    if-nez v1, :cond_f

    .line 160
    return-void

    .line 163
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 164
    .local v2, "serviceConnector":Lcom/android/server/companion/CompanionDeviceServiceConnector;
    invoke-virtual {v2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postUnbind()V

    .line 165
    .end local v2    # "serviceConnector":Lcom/android/server/companion/CompanionDeviceServiceConnector;
    goto :goto_13

    .line 166
    :cond_23
    return-void

    .line 153
    .end local v1    # "serviceConnectors":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/companion/CompanionDeviceServiceConnector;>;"
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method
