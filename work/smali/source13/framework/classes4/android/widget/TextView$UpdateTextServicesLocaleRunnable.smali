.class Landroid/widget/TextView$UpdateTextServicesLocaleRunnable;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateTextServicesLocaleRunnable"
.end annotation


# instance fields
.field private final blacklist mTextViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 12016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12017
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$UpdateTextServicesLocaleRunnable;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 12018
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 12022
    iget-object v0, p0, Landroid/widget/TextView$UpdateTextServicesLocaleRunnable;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12023
    .local v0, "textViewWeak":Landroid/widget/TextView;
    if-eqz v0, :cond_d

    .line 12024
    invoke-static {v0}, Landroid/widget/TextView;->-$$Nest$mupdateTextServicesLocaleLocked(Landroid/widget/TextView;)V

    .line 12026
    :cond_d
    return-void
.end method
