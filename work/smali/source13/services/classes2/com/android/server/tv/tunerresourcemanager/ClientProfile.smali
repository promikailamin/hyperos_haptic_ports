.class public final Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;
    }
.end annotation


# static fields
.field public static final INVALID_GROUP_ID:I = -0x1

.field public static final INVALID_RESOURCE_ID:I = -0x1


# instance fields
.field private mGroupId:I

.field private final mId:I

.field private mIsPriorityOverwritten:Z

.field private mNiceValue:I

.field private mPrimaryUsingFrontendHandle:I

.field private mPriority:I

.field private final mProcessId:I

.field private mShareFeClientIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTvInputSessionId:Ljava/lang/String;

.field private final mUseCase:I

.field private mUsingCasSystemId:I

.field private mUsingCiCamId:I

.field private mUsingFrontendHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingLnbHandles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    .line 70
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    .line 90
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 95
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 112
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    .line 113
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmTvInputSessionId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmUseCase(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    .line 115
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->-$$Nest$fgetmProcessId(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;Lcom/android/server/tv/tunerresourcemanager/ClientProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;-><init>(Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;)V

    return-void
.end method


# virtual methods
.method public getGroupId()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    return v0
.end method

.method public getInUseCasSystemId()I
    .registers 2

    .line 267
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    return v0
.end method

.method public getInUseCiCamId()I
    .registers 2

    .line 287
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    return v0
.end method

.method public getInUseFrontendHandles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    return-object v0
.end method

.method public getInUseLnbHandles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    return-object v0
.end method

.method public getPrimaryFrontend()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    return v0
.end method

.method public getPriority()I
    .registers 3

    .line 146
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getProcessId()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    return v0
.end method

.method public getShareFeClientIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    return-object v0
.end method

.method public getTvInputSessionId()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCase()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    return v0
.end method

.method public isPriorityOverwritten()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    return v0
.end method

.method public overwritePriority(I)V
    .registers 3
    .param p1, "priority"    # I

    .line 164
    if-gez p1, :cond_3

    .line 165
    return-void

    .line 167
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mIsPriorityOverwritten:Z

    .line 168
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 169
    return-void
.end method

.method public reclaimAllResources()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 302
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 303
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 304
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 305
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 306
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 307
    return-void
.end method

.method public releaseCas()V
    .registers 2

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 275
    return-void
.end method

.method public releaseCiCam()V
    .registers 2

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 295
    return-void
.end method

.method public releaseFrontend()V
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 231
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 233
    return-void
.end method

.method public releaseLnb(I)V
    .registers 4
    .param p1, "lnbHandle"    # I

    .line 254
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .param p1, "groupId"    # I

    .line 150
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mGroupId:I

    .line 151
    return-void
.end method

.method public setNiceValue(I)V
    .registers 2
    .param p1, "niceValue"    # I

    .line 172
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mNiceValue:I

    .line 173
    return-void
.end method

.method public setPrimaryFrontend(I)V
    .registers 2
    .param p1, "frontendHandle"    # I

    .line 190
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPrimaryUsingFrontendHandle:I

    .line 191
    return-void
.end method

.method public setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .line 154
    if-gez p1, :cond_3

    .line 155
    return-void

    .line 157
    :cond_3
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mPriority:I

    .line 158
    return-void
.end method

.method public shareFrontend(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public stopSharingFrontend(I)V
    .registers 4
    .param p1, "clientId"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mShareFeClientIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientProfile[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tvInputSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUseCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", processId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mProcessId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useCas(I)V
    .registers 2
    .param p1, "casSystemId"    # I

    .line 263
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCasSystemId:I

    .line 264
    return-void
.end method

.method public useCiCam(I)V
    .registers 2
    .param p1, "ciCamId"    # I

    .line 283
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingCiCamId:I

    .line 284
    return-void
.end method

.method public useFrontend(I)V
    .registers 4
    .param p1, "frontendHandle"    # I

    .line 181
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingFrontendHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public useLnb(I)V
    .registers 4
    .param p1, "lnbHandle"    # I

    .line 241
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->mUsingLnbHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method
