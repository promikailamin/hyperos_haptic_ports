.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/AppRestrictionController;->lambda$dispatchAppRestrictionLevelChanges$2(ILjava/lang/String;ILandroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V

    return-void
.end method
