.class public Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "AudioRestrictionManager.java"


# instance fields
.field public mKey:Lcom/android/server/appop/AudioRestrictionManager$Key;

.field public mRestriction:Lcom/android/server/appop/AudioRestrictionManager$Restriction;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AudioRestrictionManager$Key;Lcom/android/server/appop/AudioRestrictionManager$Restriction;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;->mKey:Lcom/android/server/appop/AudioRestrictionManager$Key;

    .line 110
    iput-object p2, p0, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;->mRestriction:Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;->mKey:Lcom/android/server/appop/AudioRestrictionManager$Key;

    invoke-virtual {v1}, Lcom/android/server/appop/AudioRestrictionManager$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager$ZenRestrictionEvent;->mRestriction:Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz p0, :cond_1c

    .line 115
    invoke-virtual {p0}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :cond_1c
    const-string/jumbo p0, "restriction removed"

    :goto_1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
