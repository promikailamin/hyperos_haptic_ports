.class public final Lcom/android/server/app/GameServiceConfiguration;
.super Ljava/lang/Object;
.source "GameServiceConfiguration.java"


# instance fields
.field public final mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 60
    :cond_4
    instance-of v1, p1, Lcom/android/server/app/GameServiceConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 64
    :cond_a
    check-cast p1, Lcom/android/server/app/GameServiceConfiguration;

    .line 65
    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    iget-object p1, p1, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 66
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public getGameServiceComponentConfiguration()Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameServiceConfiguration{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameServiceComponentConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
