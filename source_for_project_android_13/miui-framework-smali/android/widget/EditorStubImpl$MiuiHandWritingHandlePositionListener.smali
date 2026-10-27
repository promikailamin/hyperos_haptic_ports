.class Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;
.super Ljava/lang/Object;
.source "EditorStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditorStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MiuiHandWritingHandlePositionListener"
.end annotation


# static fields
.field private static final blacklist ACTION_HANDLE_VIEW_APP:Ljava/lang/String; = "ACTION_HANDLE_VIEW_APP"

.field private static final blacklist HANDLE_KEY_VIEW_RECT:Ljava/lang/String; = "HANDLE_KEY_VIEW_RECT"

.field private static final blacklist HANDLE_KEY_VIEW_STATUS:Ljava/lang/String; = "HANDLE_KEY_VIEW_STATUS"

.field public static final blacklist INSERT_HANDLE_VIEW_HIDE:I = 0x3

.field public static final blacklist INSERT_HANDLE_VIEW_MOVE:I = 0x2

.field public static final blacklist INSERT_HANDLE_VIEW_SHOW:I = 0x1

.field public static final blacklist SELECT_HANDLE_VIEW_HIDE:I = 0x6

.field public static final blacklist SELECT_HANDLE_VIEW_MOVE:I = 0x5

.field public static final blacklist SELECT_HANDLE_VIEW_SHOW:I = 0x4

.field public static final blacklist TYPE_HIDE:I = 0x2

.field public static final blacklist TYPE_MOVE:I = 0x1

.field public static final blacklist TYPE_SHOW:I


# instance fields
.field private final blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mInsertionHandleData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditorStubImpl$HandleData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInsertionSendData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSelectionHandleData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditorStubImpl$HandleData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSelectionSendData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 9
    .param p1, "mTextView"    # Landroid/widget/TextView;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInsertionSendData:Ljava/util/ArrayList;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionSendData:Ljava/util/ArrayList;

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInsertionHandleData:Ljava/util/ArrayList;

    .line 83
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionHandleData:Ljava/util/ArrayList;

    .line 86
    iput-object p1, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mTextView:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 88
    const-string v6, "input_method"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 89
    new-instance v3, Landroid/widget/EditorStubImpl$HandleData;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/widget/EditorStubImpl$HandleData;-><init>(Landroid/widget/EditorStubImpl$HandleData-IA;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v3, Landroid/widget/EditorStubImpl$HandleData;

    invoke-direct {v3, v6}, Landroid/widget/EditorStubImpl$HandleData;-><init>(Landroid/widget/EditorStubImpl$HandleData-IA;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Landroid/widget/EditorStubImpl$HandleData;

    invoke-direct {v3, v6}, Landroid/widget/EditorStubImpl$HandleData;-><init>(Landroid/widget/EditorStubImpl$HandleData-IA;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditorStubImpl$HandleData;

    iget-object v4, v4, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditorStubImpl$HandleData;

    iget-object v3, v3, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditorStubImpl$HandleData;

    iget-object v1, v1, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method private static blacklist copyRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/RectF;",
            ">(TT;TT;)V"
        }
    .end annotation

    .line 209
    .local p0, "copyFrom":Landroid/graphics/RectF;, "TT;"
    .local p1, "copyTo":Landroid/graphics/RectF;, "TT;"
    if-eqz p0, :cond_16

    if-nez p1, :cond_5

    goto :goto_16

    .line 212
    :cond_5
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 213
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 214
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 215
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 216
    return-void

    .line 210
    :cond_16
    :goto_16
    return-void
.end method

.method private static blacklist copyRectFListFromHandleData(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/EditorStubImpl$HandleData;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p0, "from":Ljava/util/List;, "Ljava/util/List<Landroid/widget/EditorStubImpl$HandleData;>;"
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_28

    .line 170
    invoke-static {}, Landroid/widget/EditorStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Two list size not equals,try recover it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 173
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 176
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 177
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditorStubImpl$HandleData;

    iget-object v1, v1, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    .line 178
    .local v1, "fromRectF":Landroid/graphics/RectF;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 179
    .local v2, "toRectF":Landroid/graphics/RectF;
    invoke-static {v1, v2}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->copyRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 176
    .end local v1    # "fromRectF":Landroid/graphics/RectF;
    .end local v2    # "toRectF":Landroid/graphics/RectF;
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 181
    .end local v0    # "i":I
    :cond_43
    return-void
.end method

.method private static blacklist getStatus(ZI)I
    .registers 3
    .param p0, "isMultiHandle"    # Z
    .param p1, "type"    # I

    .line 184
    const/4 v0, -0x1

    if-eqz p0, :cond_d

    .line 185
    packed-switch p1, :pswitch_data_18

    .line 193
    return v0

    .line 191
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 189
    :pswitch_9
    const/4 v0, 0x5

    return v0

    .line 187
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 196
    :cond_d
    packed-switch p1, :pswitch_data_22

    .line 204
    return v0

    .line 202
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 200
    :pswitch_13
    const/4 v0, 0x2

    return v0

    .line 198
    :pswitch_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_15
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method private blacklist notifyInputMethodService(ZI)V
    .registers 10
    .param p1, "isMultiHandle"    # Z
    .param p2, "type"    # I

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1, p2}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->getStatus(ZI)I

    move-result v1

    .line 154
    .local v1, "status":I
    if-eqz p1, :cond_e

    iget-object v2, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionHandleData:Ljava/util/ArrayList;

    goto :goto_10

    :cond_e
    iget-object v2, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInsertionHandleData:Ljava/util/ArrayList;

    .line 155
    .local v2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditorStubImpl$HandleData;>;"
    :goto_10
    if-eqz p1, :cond_15

    iget-object v3, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionSendData:Ljava/util/ArrayList;

    goto :goto_17

    :cond_15
    iget-object v3, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInsertionSendData:Ljava/util/ArrayList;

    .line 156
    .local v3, "sendData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    :goto_17
    invoke-static {v2, v3}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->copyRectFListFromHandleData(Ljava/util/List;Ljava/util/List;)V

    .line 157
    const-string v4, "HANDLE_KEY_VIEW_STATUS"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v4, "HANDLE_KEY_VIEW_RECT"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    invoke-static {}, Landroid/widget/EditorStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMultiHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sendData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mTextView:Landroid/widget/TextView;

    const-string v6, "ACTION_HANDLE_VIEW_APP"

    invoke-virtual {v4, v5, v6, v0}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 165
    return-void
.end method


# virtual methods
.method public blacklist insertionHandlePositionChanged(ILandroid/graphics/RectF;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 102
    invoke-static {}, Landroid/widget/EditorStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RectF = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInsertionHandleData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInsertionHandleData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mInsertionHandleData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditorStubImpl$HandleData;

    .line 106
    .local v0, "handleData":Landroid/widget/EditorStubImpl$HandleData;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_51

    .line 107
    iget-object v2, v0, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-boolean v2, v0, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    if-eqz v2, :cond_50

    .line 109
    iget-object v2, v0, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-static {p2, v2}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->copyRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 110
    invoke-direct {p0, v1, p1}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->notifyInputMethodService(ZI)V

    .line 112
    :cond_50
    return-void

    .line 114
    :cond_51
    if-nez p1, :cond_54

    goto :goto_55

    :cond_54
    move v2, v1

    .line 115
    .local v2, "isShow":Z
    :goto_55
    iget-object v3, v0, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-static {p2, v3}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->copyRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 116
    iget-boolean v3, v0, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    if-eq v2, v3, :cond_61

    .line 118
    invoke-direct {p0, v1, p1}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->notifyInputMethodService(ZI)V

    .line 120
    :cond_61
    iput-boolean v2, v0, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    .line 121
    return-void
.end method

.method public blacklist selectionHandlePositionChanged(ZILandroid/graphics/RectF;)V
    .registers 11
    .param p1, "isStartHandle"    # Z
    .param p2, "type"    # I
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 125
    invoke-static {}, Landroid/widget/EditorStubImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStartHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RectF = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectionHandleData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionHandleData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionHandleData:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditorStubImpl$HandleData;

    .line 130
    .local v0, "startHandleData":Landroid/widget/EditorStubImpl$HandleData;
    iget-object v2, p0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->mSelectionHandleData:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditorStubImpl$HandleData;

    .line 131
    .local v2, "endHandleData":Landroid/widget/EditorStubImpl$HandleData;
    if-eqz p1, :cond_50

    move-object v4, v0

    goto :goto_51

    :cond_50
    move-object v4, v2

    .line 132
    .local v4, "currentHandle":Landroid/widget/EditorStubImpl$HandleData;
    :goto_51
    if-ne p2, v3, :cond_6c

    .line 133
    iget-object v1, v4, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-boolean v1, v0, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    if-eqz v1, :cond_6b

    iget-boolean v1, v2, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    if-eqz v1, :cond_6b

    .line 136
    iget-object v1, v4, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-static {p3, v1}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->copyRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 137
    invoke-direct {p0, v3, p2}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->notifyInputMethodService(ZI)V

    .line 139
    :cond_6b
    return-void

    .line 141
    :cond_6c
    if-nez p2, :cond_6f

    move v1, v3

    .line 142
    .local v1, "isShow":Z
    :cond_6f
    iget-object v5, v4, Landroid/widget/EditorStubImpl$HandleData;->mPosition:Landroid/graphics/RectF;

    invoke-static {p3, v5}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->copyRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 143
    iget-boolean v5, v4, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    if-eq v1, v5, :cond_81

    iget-boolean v5, v0, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    iget-boolean v6, v2, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    if-eq v5, v6, :cond_81

    .line 146
    invoke-direct {p0, v3, p2}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->notifyInputMethodService(ZI)V

    .line 148
    :cond_81
    iput-boolean v1, v4, Landroid/widget/EditorStubImpl$HandleData;->mIsShow:Z

    .line 149
    return-void
.end method
