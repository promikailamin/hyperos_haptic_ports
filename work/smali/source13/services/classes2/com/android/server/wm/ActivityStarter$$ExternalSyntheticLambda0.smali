.class public final synthetic Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStarter;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStarter;[ILcom/android/server/uri/NeededUriGrants;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityStarter;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityStarter;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$1:[I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/uri/NeededUriGrants;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ActivityStarter;->lambda$startActivityInner$0$com-android-server-wm-ActivityStarter([ILcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/Task;)Z

    move-result p1

    return p1
.end method
