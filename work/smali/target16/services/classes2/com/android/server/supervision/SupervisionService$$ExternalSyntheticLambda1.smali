.class public final synthetic Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;->f$0:I

    iget-boolean p0, p0, Lcom/android/server/supervision/SupervisionService$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Landroid/app/supervision/ISupervisionListener;

    invoke-static {v0, p0, p1}, Lcom/android/server/supervision/SupervisionService;->$r8$lambda$3Y8XBaiJv5BOnrsu1Vxt-hZ0WpM(IZLandroid/app/supervision/ISupervisionListener;)V

    return-void
.end method
