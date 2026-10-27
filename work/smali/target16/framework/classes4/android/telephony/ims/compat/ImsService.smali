.class public Landroid/telephony/ims/compat/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsService(Compat)"

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.compat.ImsService"


# instance fields
.field private final greylist-max-o mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-r mImsServiceController:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateEmergencyMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/ImsService;->createEmergencyMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateMMTelFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/ImsService;->createMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/compat/ImsService;I)Lcom/android/ims/internal/IImsRcsFeature;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/ImsService;->createRcsFeatureInternal(I)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeature(Landroid/telephony/ims/compat/ImsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->removeImsFeature(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/telephony/ims/compat/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/ImsService$1;-><init>(Landroid/telephony/ims/compat/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 128
    return-void
.end method

.method private greylist-max-o addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V
    .registers 7

    .line 188
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 191
    if-nez v1, :cond_17

    .line 193
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 194
    iget-object v2, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :cond_17
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private blacklist addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    .line 202
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 204
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 205
    if-nez v1, :cond_27

    .line 206
    const-string p2, "ImsService(Compat)"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not add ImsFeatureStatusCallback. No ImsFeatures exist on slot "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 211
    if-eqz p1, :cond_32

    .line 212
    invoke-virtual {p1, p3}, Landroid/telephony/ims/compat/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 214
    :cond_32
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private blacklist createEmergencyMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 4

    .line 151
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_f

    .line 153
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V

    .line 154
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p1

    return-object p1

    .line 156
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist createMMTelFeatureInternal(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 4

    .line 161
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_f

    .line 163
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V

    .line 164
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p1

    return-object p1

    .line 166
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist createRcsFeatureInternal(I)Lcom/android/ims/internal/IImsRcsFeature;
    .registers 4

    .line 171
    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_f

    .line 173
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V

    .line 174
    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/RcsFeature;->getBinder()Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object p1

    return-object p1

    .line 176
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist removeImsFeature(II)V
    .registers 7

    .line 235
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 238
    if-nez v1, :cond_27

    .line 239
    const-string p2, "ImsService(Compat)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit v0

    return-void

    .line 243
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 244
    if-nez v2, :cond_53

    .line 245
    const-string v1, "ImsService(Compat)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " exists on slot "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_53
    invoke-virtual {v2}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureRemoved()V

    .line 250
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method private blacklist removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    .line 219
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 222
    if-nez v1, :cond_27

    .line 223
    const-string p2, "ImsService(Compat)"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not remove ImsFeatureStatusCallback. No ImsFeatures exist on slot "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    monitor-exit v0

    return-void

    .line 227
    :cond_27
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/compat/feature/ImsFeature;

    .line 228
    if-eqz p1, :cond_32

    .line 229
    invoke-virtual {p1, p3}, Landroid/telephony/ims/compat/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 231
    :cond_32
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method private blacklist setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;II)V
    .registers 4

    .line 181
    invoke-virtual {p1, p0}, Landroid/telephony/ims/compat/feature/ImsFeature;->setContext(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p1, p2}, Landroid/telephony/ims/compat/feature/ImsFeature;->setSlotId(I)V

    .line 183
    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/compat/ImsService;->addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V

    .line 184
    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureReady()V

    .line 185
    return-void
.end method


# virtual methods
.method public greylist-max-o getFeatures(I)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    return-object p1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 135
    const-string v0, "android.telephony.ims.compat.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 136
    const-string p1, "ImsService(Compat)"

    const-string v0, "ImsService(Compat) Bound."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object p1

    .line 139
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .registers 2

    .line 260
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .registers 2

    .line 269
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;
    .registers 2

    .line 277
    const/4 p1, 0x0

    return-object p1
.end method
