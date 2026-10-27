.class Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "MiShareDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field blacklist mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareDeviceView;)V
    .registers 2
    .param p1, "itemView"    # Lcom/miui/mishare/app/view/MiShareDeviceView;

    .line 385
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 386
    iput-object p1, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$ViewHolder;->mDeviceView:Lcom/miui/mishare/app/view/MiShareDeviceView;

    .line 387
    return-void
.end method
