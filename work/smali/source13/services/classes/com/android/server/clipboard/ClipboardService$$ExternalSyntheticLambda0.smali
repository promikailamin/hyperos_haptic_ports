.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/clipboard/ClipboardService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/clipboard/ClipboardService;

    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$0$com-android-server-clipboard-ClipboardService(Landroid/content/ClipData;)V

    return-void
.end method
