
import java.io.Serializable;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;


/**
 *
 * @author Kim
 */
@ManagedBean
@SessionScoped
public class EventDetailController implements Serializable
{
    private boolean showPopup;
    
    public void show()
    {
        showPopup = true;
    }
    
    public void hide()
    {
        showPopup = false;
    }
    
    public boolean isShowPopup()
    {
        return showPopup;
    }
    
    public void setShowPopup(boolean sp)
    {
        this.showPopup = sp;
    }
}
