.class public final synthetic Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntPredicate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/IntPredicate;

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->$r8$lambda$jCGBJWj1oyQ155mkPHIohH7fSEU(Ljava/util/function/IntPredicate;I)Z

    move-result p0

    return p0
.end method
