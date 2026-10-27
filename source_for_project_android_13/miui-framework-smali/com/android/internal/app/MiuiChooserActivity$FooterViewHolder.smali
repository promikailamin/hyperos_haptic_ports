.class final Lcom/android/internal/app/MiuiChooserActivity$FooterViewHolder;
.super Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FooterViewHolder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/MiuiChooserActivity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .line 3421
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$FooterViewHolder;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    .line 3422
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/MiuiChooserActivity$ViewHolderBase;-><init>(Lcom/android/internal/app/MiuiChooserActivity;Landroid/view/View;I)V

    .line 3423
    return-void
.end method
