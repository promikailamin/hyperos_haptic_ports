.class public final synthetic Landroid/widget/AbsListViewStubImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/AbsListViewStubImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/AbsListViewStubImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsListViewStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/widget/AbsListViewStubImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsListViewStubImpl$$ExternalSyntheticLambda0;->f$0:Landroid/widget/AbsListViewStubImpl;

    check-cast p1, Landroid/widget/AbsListViewStubImpl$L1CacheInfo;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListViewStubImpl;->lambda$clearCache$0$android-widget-AbsListViewStubImpl(Landroid/widget/AbsListViewStubImpl$L1CacheInfo;)V

    return-void
.end method
