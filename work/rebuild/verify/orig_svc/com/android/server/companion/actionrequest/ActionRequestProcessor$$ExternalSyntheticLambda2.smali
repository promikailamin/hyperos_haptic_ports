.class public final synthetic Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;

    invoke-static {p0, p1}, Lcom/android/server/companion/actionrequest/ActionRequestProcessor;->$r8$lambda$lJgzr9nd9g5kHPbxllAO0pfBZLs(Ljava/lang/String;Lcom/android/server/companion/actionrequest/ActionRequestProcessor$ActionResultListener;)Z

    move-result p0

    return p0
.end method
