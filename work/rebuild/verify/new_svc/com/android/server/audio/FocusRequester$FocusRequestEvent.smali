.class public Lcom/android/server/audio/FocusRequester$FocusRequestEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "FocusRequester.java"


# instance fields
.field public final mClientId:Ljava/lang/String;

.field public final mCode:I

.field public final mDescription:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V
    .registers 5

    .line 622
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 623
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mClientId:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mUid:I

    .line 625
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mPackageName:Ljava/lang/String;

    .line 626
    iput p2, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mCode:I

    if-eqz p3, :cond_1a

    goto :goto_1c

    .line 627
    :cond_1a
    const-string p3, ""

    :goto_1c
    iput-object p3, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/FocusRequester;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    .line 619
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .registers 4

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focus owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    const-string v1, ""

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
