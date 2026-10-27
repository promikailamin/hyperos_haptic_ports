.class public Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;
.super Ljava/lang/Object;
.source "DisableRefreshRateSwitchingVote.java"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mDisableRefreshRateSwitching:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 44
    :cond_4
    instance-of v1, p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    check-cast p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 45
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    iget-boolean p1, p1, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    if-ne p0, p1, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method public hashCode()I
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableRefreshRateSwitchingVote{ mDisableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .registers 3

    .line 37
    iget-boolean v0, p1, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;->mDisableRefreshRateSwitching:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    iput-boolean p0, p1, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    return-void
.end method
