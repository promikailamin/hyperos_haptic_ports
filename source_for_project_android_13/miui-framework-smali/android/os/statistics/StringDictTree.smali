.class Landroid/os/statistics/StringDictTree;
.super Landroid/os/statistics/TreeNode;
.source "StringDictTree.java"


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;)V
    .registers 6
    .param p1, "strings"    # [Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Landroid/os/statistics/TreeNode;-><init>()V

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_10

    aget-object v3, p1, v2

    .line 9
    .local v3, "item":Ljava/lang/String;
    invoke-super {p0, v3, v1}, Landroid/os/statistics/TreeNode;->insert(Ljava/lang/String;I)V

    .line 8
    .end local v3    # "item":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 11
    :cond_10
    return-void
.end method


# virtual methods
.method public blacklist find(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/os/statistics/TreeNode;->find(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
