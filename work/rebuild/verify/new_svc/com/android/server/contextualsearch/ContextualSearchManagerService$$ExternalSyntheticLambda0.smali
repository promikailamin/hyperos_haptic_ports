.class public final synthetic Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->$r8$lambda$k9b7eypSmzvUjeSGn7jNn--OxTU(ILjava/lang/String;I)Landroid/media/projection/IMediaProjection;

    move-result-object p0

    return-object p0
.end method
