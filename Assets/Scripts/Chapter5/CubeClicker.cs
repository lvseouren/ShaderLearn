using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeClicker : MonoBehaviour {
    public ColorPicker picker;

    // Use this for initialization
    void OnMouseDown()
    {
        picker.OnCudeClicked();
    }
}
