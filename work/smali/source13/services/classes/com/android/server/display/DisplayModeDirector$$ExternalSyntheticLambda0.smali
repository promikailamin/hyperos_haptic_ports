.class public final synthetic Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/DisplayModeDirector$BallotBox;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayModeDirector;

    return-void
.end method


# virtual methods
.method public final vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->lambda$new$0$com-android-server-display-DisplayModeDirector(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method
