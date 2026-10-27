.class public Lmiui/provider/ExtraGuardVirusInfoEntity;
.super Ljava/lang/Object;
.source "ExtraGuardVirusInfoEntity.java"


# instance fields
.field private blacklist mAdvice:I

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mEngineName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mVirusName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 21
    iput v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 22
    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getAdvice()I
    .registers 2

    .line 44
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEngineName()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 28
    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return v0
.end method

.method public blacklist getVirusName()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setAdvice(I)V
    .registers 2
    .param p1, "_advice"    # I

    .line 48
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    .line 49
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "_description"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public blacklist setEngineName(Ljava/lang/String;)V
    .registers 2
    .param p1, "_engineName"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "_packageName"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public blacklist setType(I)V
    .registers 2
    .param p1, "_type"    # I

    .line 32
    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    .line 33
    return-void
.end method

.method public blacklist setVirusName(Ljava/lang/String;)V
    .registers 2
    .param p1, "_virusName"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    .line 57
    return-void
.end method
