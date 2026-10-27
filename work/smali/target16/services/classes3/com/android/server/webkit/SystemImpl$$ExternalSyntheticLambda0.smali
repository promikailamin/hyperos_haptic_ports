.class public final synthetic Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/webkit/SystemImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/webkit/SystemImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/webkit/SystemImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/webkit/SystemImpl;

    check-cast p1, Landroid/webkit/WebViewProviderInfo;

    invoke-static {p0, p1}, Lcom/android/server/webkit/SystemImpl;->$r8$lambda$M5QgWlGaXkQ3dmUW07583-IfhCs(Lcom/android/server/webkit/SystemImpl;Landroid/webkit/WebViewProviderInfo;)Z

    move-result p0

    return p0
.end method
