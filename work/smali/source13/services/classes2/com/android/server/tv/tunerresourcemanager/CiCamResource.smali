.class public final Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
.super Lcom/android/server/tv/tunerresourcemanager/CasResource;
.source "CiCamResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;)V
    .registers 2
    .param p1, "builder"    # Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;Lcom/android/server/tv/tunerresourcemanager/CiCamResource-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;)V

    return-void
.end method


# virtual methods
.method public getCiCamId()I
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getSystemId()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CiCamResource[systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getSystemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFullyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->isFullyUsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getMaxSessionNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerClients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->ownersMapToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method
